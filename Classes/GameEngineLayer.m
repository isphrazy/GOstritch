
#import "GameEngineLayer.h"

#define CAMERA_POS_X 350
#define CAMERA_POS_Y 200

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
		player.position = ccp(CAMERA_POS_X,CAMERA_POS_Y);
		player.pos_x = 5;
		player.pos_y = 100;
		player.vy = 0;
		player.vx = 0;
		NSLog(@"%f,%f",CAMERA_OFFSET_X,CAMERA_OFFSET_Y);
		[self schedule:@selector(update:)];
		self.isTouchEnabled = YES;
	}
	return self;
}

//read a map from map folder, load island and assets
-(void) loadMap{
	islands = [GameEngineLayer loadIslands]; //TODO: sort by y
	
	for (Island* i in islands) { //TODO: make seperate methods for processing
		[self addChild:i];
	}
}

-(void)update:(ccTime)dt {
	float pre_y = player.pos_y;
	float post_y = player.pos_y+player.vy;
	BOOL is_contact = NO;
	
	float temp;
	for (Island* i in islands) {
		float h = [i get_height:player.pos_x];
		temp = h;
		if (h != -1 && h <= pre_y && h >= post_y) {
			is_contact = YES;
			post_y = h;
			break;
		}
	}
	
	if (is_contact) {
		player.pos_y=post_y;
		player.vy = 0;
		
	} else {
		player.pos_y+=player.vy; //move before incrementing velocity OR ELSE
		player.vy-=0.5;
	}
	player.pos_x++;

	for (Island* i in islands) {
		i.position = ccp(i.startX-player.pos_x+CAMERA_POS_X,i.startY-player.pos_y+CAMERA_POS_Y);
		NSLog(@"%f,%f",i.position.x,i.position.y);
	}
}

-(void) ccTouchesBegan:(NSSet*)pTouches withEvent:(UIEvent*)pEvent {
	
}

-(void) ccTouchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
}

-(void) ccTouchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	player.vy = 10;
}




- (void) dealloc{

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
	
	int i;
	for(i = 0; i < islandsCount; i++){
		NSDictionary *currentIslandDict = (NSDictionary *)[islandArray objectAtIndex:i];
		CGPoint start = ccp( ((NSString *)[currentIslandDict objectForKey:@"startX"]).floatValue
							,((NSString *)[currentIslandDict objectForKey:@"startY"]).floatValue );
		CGPoint end = ccp( ((NSString *)[currentIslandDict objectForKey:@"endX"]).floatValue
						  ,((NSString *)[currentIslandDict objectForKey:@"endY"]).floatValue );
		
		Island *currentIsland;
		if (true) { //TODO: if statement here based on type of island read in json
			currentIsland = [Line_Island init_pt1:start pt2:end];
			//NSLog(@"new (line_island) min:%.0f max:%.0f",currentIsland.startX,currentIsland.endX);
		}
		
		[n_islands addObject:currentIsland];
		
	}
	return n_islands;
	
}
@end
