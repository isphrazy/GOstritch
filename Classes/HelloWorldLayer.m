//
//  HelloWorldLayer.m
//  GOstrich
//
//  Created by Pingyang He on 4/2/12.
//  Copyright University of Washington 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"


NSMutableArray *islands; //array of island
NSMutableArray *assets; //array of assets

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// create and initialize a Label
//		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
//
//		// ask director the the window size
//		CGSize size = [[CCDirector sharedDirector] winSize];
//	
//		// position the label on the center of the screen
//		label.position =  ccp( size.width /2 , size.height/2 );
//		
//		// add the label as a child to this Layer
//		[self addChild: label];
		[self loadMap];
		
	}
	return self;
}

//read a map from map forlder, load island and assets
-(void) loadMap{
	NSLog(@"loading map");
	[self loadIslands];
	[self loadAssets];

}

//read island file from disk, load it into variable islands
-(void) loadIslands{
	
	//find the path of given file
	NSString *islandFilePath = [[NSBundle mainBundle] pathForResource:@"island1" ofType:@"map"];
	NSString *islandInputStr = [[NSString alloc] initWithContentsOfFile : islandFilePath];

	NSData *islandData  =  [islandInputStr dataUsingEncoding : NSUTF8StringEncoding];

	NSArray *islandArray = [[CJSONDeserializer deserializer]
								deserializeAsArray : islandData error : nil ];
	
	int islandsCount = [islandArray count];
	islands = [NSMutableArray arrayWithCapacity:islandsCount];
	int i;
	for(i = 0; i < islandsCount; i++){
		Island *currentIsland = [[Island alloc] init];
		NSDictionary *currentIslandDict = (NSDictionary *)[islandArray objectAtIndex:i];
		[currentIsland setStartX:((NSString *)[currentIslandDict objectForKey:@"startX"]).intValue];
		[currentIsland setStartY:((NSString *)[currentIslandDict objectForKey:@"startY"]).intValue];
		[currentIsland setEndX:((NSString *)[currentIslandDict objectForKey:@"endX"]).intValue];
		[currentIsland setEndY:((NSString *)[currentIslandDict objectForKey:@"endY"]).intValue]; 
		[islands addObject:currentIsland];
		NSLog(@"startX=%d", currentIsland.startX);
	}
	//NSString *first = ((NSString *)[((NSDictionary *)[islandArray objectAtIndex:0]) objectForKey:@"1"]);
	
	//int pid = ((NSString *)[((NSDictionary *)[jsonDict objectForKey:@"1"]) objectForKey:@"2"]).intValue;
	//NSLog(@"10=%@", first);
	
	//[islandFilePath dealloc];
	//[islandInputStr dealloc];
	//[islandData dealloc];
	
}

-(void) loadAssets{

}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
