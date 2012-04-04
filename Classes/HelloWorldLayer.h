//
//  HelloWorldLayer.h
//  GOstrich
//
//  Created by Pingyang He on 4/2/12.
//  Copyright University of Washington 2012. All rights reserved.
//


#import "cocos2d.h"
#import "CJSONDeserializer.h"
#import "Line_Island.h"
#import "Island.h"

@interface HelloWorldLayer : CCLayer {
	NSMutableArray *islands;
	NSMutableArray *assets;
}

+(CCScene *) scene;
+(NSMutableArray*) loadIslands;
-(void) loadMap;

@end
