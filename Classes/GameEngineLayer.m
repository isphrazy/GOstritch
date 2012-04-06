
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
		player.vx = 5;
		NSLog(@"%f,%f",CAMERA_OFFSET_X,CAMERA_OFFSET_Y);
		[self schedule:@selector(update:)];
		self.isTouchEnabled = YES;
		[self runAction:[CCFollow actionWithTarget:(player) worldBoundary:CGRectMake(0,0,3000,3000)]];
	}
	return self;
}

//read a map from map folder, load island and assets
-(void) loadMap{
	islands = [GameEngineLayer loadIslands];
	
	NSSortDescriptor *sortDescriptor;
	sortDescriptor = [[[NSSortDescriptor alloc] initWithKey:@"startY" ascending:NO] autorelease];
	[islands sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
	
	
	for (Island* i in islands) { //TODO: make seperate methods for processing
		[self addChild:i];
	}
}

-(void)update:(ccTime)dt {
	float pos_x = player.position.x;
	float pos_y = player.position.y;
	
	float pre_y = pos_y;
	float post_y = pos_y+player.vy;
	BOOL is_contact = NO;
	Island *contact_island;
	
	float temp;
	for (Island* i in islands) {
		float h = [i get_height:pos_x];
		temp = h;
		if (h != -1 && h <= pre_y && h >= post_y) {
			is_contact = YES;
			post_y = h;
			contact_island = i;
			break;
		}
	}
	
	if (is_contact) {
		float mov_h = [contact_island get_height:(pos_x+player.vx)];
		if (mov_h != -1) {
			pos_x = pos_x + player.vx;
			pos_y = mov_h;
		} else {
			pos_x = pos_x + player.vx;
			pos_y=post_y;
		}
		player.vy = 0;
	} else {
		pos_y+=player.vy; //move before incrementing velocity OR ELSE
		player.vy-=0.5;
		
		float pre_x = pos_x;
		float post_x = pos_x+player.vx;
		BOOL has_hit_x = NO;
		for (Island* i in islands) {
			CGPoint intersection = [GameEngineLayer line_seg_intersection_a1:ccp(pre_x,pos_y) a2:ccp(post_x,pos_y) b1:ccp(i.startX,i.startY) b2:ccp(i.endX,i.endY)];
			if (intersection.x != -1 && intersection.y != -1) {
				pos_x = intersection.x;
				pos_y = [i get_height:intersection.x];
				has_hit_x = YES;
				break;
			}
		}
		
		if (has_hit_x == NO) {
			pos_x = post_x;
		}
		//TODO--FIX THIS  
		//pos_x+=player.vx;
	}
	player.position=ccp(pos_x,pos_y);
	
	if (player.position.y < 0) {
		player.position = ccp(PLAYER_START_X,PLAYER_START_Y);
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

+(CGPoint)line_seg_intersection_a1:(CGPoint)a1 a2:(CGPoint)a2 b1:(CGPoint)b1 b2:(CGPoint)b2 {
	double Ax = a1.x; double Ay = a1.y;
	double Bx = a2.x; double By = a2.y;
	double Cx = b1.x; double Cy = b1.y;
	double Dx = b2.x; double Dy = b2.y;
	double X; double Y;
	double  distAB, theCos, theSin, newX, ABpos ;
	
	//  Fail if either line segment is zero-length.
	if (Ax==Bx && Ay==By || Cx==Dx && Cy==Dy) return ccp(-1,-1);
	
	//  Fail if the segments share an end-point.
	if (Ax==Cx && Ay==Cy || Bx==Cx && By==Cy
		||  Ax==Dx && Ay==Dy || Bx==Dx && By==Dy) {
		return ccp(-1,-1); }
	
	//  (1) Translate the system so that point A is on the origin.
	Bx-=Ax; By-=Ay;
	Cx-=Ax; Cy-=Ay;
	Dx-=Ax; Dy-=Ay;
	
	//  Discover the length of segment A-B.
	distAB=sqrt(Bx*Bx+By*By);
	
	//  (2) Rotate the system so that point B is on the positive X axis.
	theCos=Bx/distAB;
	theSin=By/distAB;
	newX=Cx*theCos+Cy*theSin;
	Cy  =Cy*theCos-Cx*theSin; Cx=newX;
	newX=Dx*theCos+Dy*theSin;
	Dy  =Dy*theCos-Dx*theSin; Dx=newX;
	
	//  Fail if segment C-D doesn't cross line A-B.
	if (Cy<0. && Dy<0. || Cy>=0. && Dy>=0.) return ccp(-1,-1);
	
	//  (3) Discover the position of the intersection point along line A-B.
	ABpos=Dx+(Cx-Dx)*Dy/(Dy-Cy);
	
	//  Fail if segment C-D crosses line A-B outside of segment A-B.
	if (ABpos<0. || ABpos>distAB) return ccp(-1,-1);
	
	//  (4) Apply the discovered position to line A-B in the original coordinate system.
	X=Ax+ABpos*theCos;
	Y=Ay+ABpos*theSin;
	
	//  Success.
	return ccp(X,Y);; 
}
@end
