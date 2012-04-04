//
//  HelloWorldLayer.h
//  GOstrich
//
//  Created by Student User on 4/2/12.
//  Copyright University of Washington 2012. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
	NSArray *islands;
	NSArray *assets;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

-(void) loadMap;
-(void) loadIslands;
-(void) loadAssets;

@end
