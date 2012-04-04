//
//  HelloWorldLayer.m
//  GOstrich
//
//  Created by Student User on 4/2/12.
//  Copyright University of Washington 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "CJSONDeserializer.h"

NSArray *islands; //array of island
NSArray *assets; //array of assets

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

-(void) loadIslands{
	
	NSString *islandFilePath = [[NSBundle mainBundle] pathForResource:@"island1" ofType:@"map"];
	NSString *jsonStr = [[NSString alloc] initWithContentsOfFile : islandFilePath];
	
	
	NSData  *jsonData  =  [jsonStr  dataUsingEncoding : NSUTF8StringEncoding];
	//NSData *reader = [NSData dataWithContentsOfFile:@"map/island1.txt"];
	NSError  *error = nil;
	
	NSArray *jsonArray  =  [ [ CJSONDeserializer  deserializer ]  deserializeAsArray : jsonData   error : &error ];
	NSString *first = ((NSString *)[((NSDictionary *)[jsonArray objectAtIndex:0]) objectForKey:@"1"]);
	//int pid = ((NSString *)[((NSDictionary *)[jsonDict objectForKey:@"1"]) objectForKey:@"2"]).intValue;
	NSLog(@"10=%@", first);
	
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
