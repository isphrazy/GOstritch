#import "GameEngineLayer.h"

#define PLAYER_START_X 50
#define PLAYER_START_Y 50

@implementation GameEngineLayer

+(CCScene *) scene{
	[[CCDirector sharedDirector] setDisplayFPS:NO];
	CCScene *scene = [CCScene node];
	GameEngineLayer *layer = [GameEngineLayer node];
	[scene addChild: layer];
	return scene;
}


-(id) init{
	if( (self=[super init])) {
		[self loadMap];
		
		player = [Player init];
		[self addChild:player];
		player.position = ccp(PLAYER_START_X,PLAYER_START_Y);
		player.vy = 0;
		player.vx = 5; //TODO -- CHANGE SPEEDS BASED ON GAME EVENTS
		[self schedule:@selector(update:)];
		self.isTouchEnabled = YES;
		[self runAction:[CCFollow actionWithTarget:(player) worldBoundary:CGRectMake(0,0,3000,3000)]];//TODO -- VARIABLE WORLD BOUNDS
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
			CGPoint intersection = [GameEngineLayer line_seg_intersection_a1:ccp(pre_x,pos_y) a2:ccp(post_x,pos_y) b1:ccp(i.startX,i.startY) b2:ccp(i.endX,i.endY)];
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

//TODO--MOVE THIS TO STATIC COMMON LIB
+(CGPoint)line_seg_intersection_a1:(CGPoint)a1 a2:(CGPoint)a2 b1:(CGPoint)b1 b2:(CGPoint)b2 {//2 line segment intersection (seg a1,a2) (seg b1,b2)
	double Ax = a1.x; double Ay = a1.y;
	double Bx = a2.x; double By = a2.y;
	double Cx = b1.x; double Cy = b1.y;
	double Dx = b2.x; double Dy = b2.y;
	double X; double Y;
	double  distAB, theCos, theSin, newX, ABpos ;
	
	if ((Ax==Bx && Ay==By) || (Cx==Dx && Cy==Dy)) return ccp(-1,-1); //  Fail if either line segment is zero-length.
	if ((Ax==Cx && Ay==Cy) || (Bx==Cx && By==Cy) ||  (Ax==Dx && Ay==Dy) || (Bx==Dx && By==Dy)) return ccp(-1,-1); //  Fail if the segments share an end-point.
	
	Bx-=Ax; By-=Ay;//Translate the system so that point A is on the origin.
	Cx-=Ax; Cy-=Ay;
	Dx-=Ax; Dy-=Ay;
	
	distAB=sqrt(Bx*Bx+By*By);//Discover the length of segment A-B.
	
	theCos=Bx/distAB;//Rotate the system so that point B is on the positive X axis.
	theSin=By/distAB;
	newX=Cx*theCos+Cy*theSin;
	Cy  =Cy*theCos-Cx*theSin; Cx=newX;
	newX=Dx*theCos+Dy*theSin;
	Dy  =Dy*theCos-Dx*theSin; Dx=newX;
	
	if ((Cy<0. && Dy<0.) || (Cy>=0. && Dy>=0.)) return ccp(-1,-1);//  Fail if segment C-D doesn't cross line A-B.
	
	ABpos=Dx+(Cx-Dx)*Dy/(Dy-Cy);//Discover the position of the intersection point along line A-B.
	
	if (ABpos<0. || ABpos>distAB) return ccp(-1,-1);//  Fail if segment C-D crosses line A-B outside of segment A-B.
	
	X=Ax+ABpos*theCos;//Apply the discovered position to line A-B in the original coordinate system.
	Y=Ay+ABpos*theSin;
	
	return ccp(X,Y);//  Success.
}
@end
