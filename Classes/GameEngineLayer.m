#import "GameEngineLayer.h"

#define PLAYER_START_X 50
#define PLAYER_START_Y 50

@implementation GameEngineLayer

static float cur_pos_x = 0;
static float cur_pos_y = 0; 

+(float) get_cur_pos_x { //TODO--CLEAN ME UP, HACKY
	return cur_pos_x;
}

+(float) get_cur_pos_y {
	return cur_pos_y;
}


+(CCScene *) scene{
    [Resource init_textures];
	//[[CCDirector sharedDirector] setDisplayFPS:NO];
	CCScene *scene = [CCScene node];
	BGLayer *bglayer = [BGLayer node];
	[scene addChild:bglayer];
	GameEngineLayer *layer = [GameEngineLayer node];
	[scene addChild: layer];
	return scene;
}


-(id) init{
	if( (self=[super init])) {
        
        NSLog(@"%@",[Resource get_tex:@"level1_island1_tex"]);
		[self loadMap];
		player = [Player init];
		[self addChild:player];
		player.position = ccp(PLAYER_START_X,PLAYER_START_Y);
		player.vy = 0;
		player.vx = 5; //TODO -- CHANGE SPEEDS BASED ON GAME EVENTS
		[self schedule:@selector(update:)];
		self.isTouchEnabled = YES;
		[self runAction:[CCFollow actionWithTarget:(player) worldBoundary:CGRectMake(0,0,3000,3000)]];
		//TODO -- VARIABLE WORLD BOUNDS
		//TODO -- FOLLOW TO LEFT
	}
	return self;
}

//read a map from map folder, load island and assets
-(void) loadMap{
	islands = [GameEngineLayer loadIslands];
	
	for (Island* i in islands) { //TODO -- GAME MAP PROCESSING METHOD
		[self addChild:i];
	}
}

-(void)sort_islands {
	[islands sortUsingComparator:^(id a, id b) {
		float first = [a get_height:player.position.x];
		float second = [b get_height:player.position.x];
		if (first < second) {
			return NSOrderedDescending;
		} else if (first > second) {
			return NSOrderedAscending;
		} else {
			return NSOrderedSame;
		}
	}];
}

-(void)update:(ccTime)dt {
	float pos_x = player.position.x; //note, change these variables then apply to player.position at end
	float pos_y = player.position.y;
	
	float tmp = FLT_MAX;//if islands out of order, sort
	for (Island* i in islands) {
		float h = [i get_height:pos_x];
		if (h > tmp) {
			[self sort_islands];
			break;
		}
		tmp = h;
	}
	
	float pre_y = pos_y;//ydir movement check, get y(pre +vy) and y(post +vy)
	float post_y = pos_y+player.vy;
	BOOL is_contact = NO;
	Island *contact_island;
	
	for (Island* i in islands) {//if island height at pos_x overlaps ypre->ypost, CONTACT and select island
		float h = [i get_height:pos_x];
		if (h != -1 && h <= pre_y && h >= post_y) {
			is_contact = YES;
			post_y = h;
			contact_island = i;
			break;
		}
	}
	if (is_contact) { //if found contact through ydir-search
		float rise_one = [contact_island get_height:(pos_x+1)] - [contact_island get_height:pos_x];
		float dx = player.vx*cos(atan(rise_one));
		float mov_h = [contact_island get_height:(pos_x+dx)]; //calculate slide movement on slope
		if (mov_h != -1 && [contact_island get_height:(pos_x+player.vx)] != -1) { //if on slope and enough forward room, apply movement up slope
			pos_x = pos_x + dx;
			pos_y = mov_h;
		} else { //else if at edge
			pos_x = pos_x + player.vx;
			pos_y=post_y;
		}
		float ang = atan((contact_island.endY-contact_island.startY)/(contact_island.endX-contact_island.startX))*(180/M_PI);
		player.rotation = -ang; //rotate 
		player.vy = 0;
		if (is_touch) { //if player touch, jump
			//TODO -- MORE PLAYER CONTROLS
			player.vy = 10;
		}
	} else {
		pos_y+=player.vy; //move before incrementing velocity OR ELSE
		player.vy-=0.5;
		
		player.rotation = player.rotation*0.9;//not touching anything, center rotation animation
		
		float pre_x = pos_x;//move xdir by vx, check pre and post
		float post_x = pos_x+player.vx;
		BOOL has_hit_x = NO;
		for (Island* i in islands) { //use 2-line segment intersection to see if any x-dir conflicts
			CGPoint intersection = [Common line_seg_intersection_a1:ccp(pre_x,pos_y) a2:ccp(post_x,pos_y) b1:ccp(i.startX,i.startY) b2:ccp(i.endX,i.endY)];
			if (intersection.x != -1 && intersection.y != -1) {//if conflict, set position at conflict_x,contact_island_height(x)
				pos_x = intersection.x; 
				pos_y = [i get_height:intersection.x];
				has_hit_x = YES;
				break;
			}
		}
		
		if (!has_hit_x) {//else if no conflict, full vx move
			pos_x = post_x;
		}
	}
	player.position=ccp(pos_x,pos_y);//apply movements to sprite
	
	if (player.position.y < 0) {
		//TODO--ACTUAL GAME OVER STATES
		player.position = ccp(PLAYER_START_X,PLAYER_START_Y);
	}
	
	cur_pos_x = pos_x;
	cur_pos_y = pos_y;
}

-(void) ccTouchesBegan:(NSSet*)pTouches withEvent:(UIEvent*)pEvent {
	is_touch = YES;
}

-(void) ccTouchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
}

-(void) ccTouchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	is_touch = NO;
}




- (void) dealloc{
    for (Island* i in islands) {
        [i dealloc];
    }
    [islands dealloc];
    [player dealloc];
	//TODO--DEALLOC DA GAYME
	[super dealloc];
}

//static method that loads map into array from file, process array afterwards
+(NSMutableArray*) loadIslands{
	//find the path of given file
	NSString *islandFilePath = [[NSBundle mainBundle] pathForResource:@"island1" ofType:@"map"];
	NSString *islandInputStr = [[NSString alloc] initWithContentsOfFile : islandFilePath];
	
	NSData *islandData  =  [islandInputStr dataUsingEncoding : NSUTF8StringEncoding];
	NSArray *islandArray = [[CJSONDeserializer deserializer] deserializeAsArray : islandData error : nil ];
	
	int islandsCount = [islandArray count];
	
	NSMutableArray *n_islands = [[NSMutableArray alloc] init];
	
	for(int i = 0; i < islandsCount; i++){
		NSDictionary *currentIslandDict = (NSDictionary *)[islandArray objectAtIndex:i];
		CGPoint start = ccp( ((NSString *)[currentIslandDict objectForKey:@"x1"]).floatValue
							,((NSString *)[currentIslandDict objectForKey:@"y1"]).floatValue );
		CGPoint end = ccp( ((NSString *)[currentIslandDict objectForKey:@"x2"]).floatValue
						  ,((NSString *)[currentIslandDict objectForKey:@"y2"]).floatValue );
		
		Island *currentIsland;
		if (true) { //TODO: if statement here based on type of island read in json
			currentIsland = [Line_Island init_pt1:start pt2:end];
		}
		
		[n_islands addObject:currentIsland];
		
	}
	return n_islands;
}


@end
