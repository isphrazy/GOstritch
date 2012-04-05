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
#import "Player.h"

@interface HelloWorldLayer : CCLayer {
	NSMutableArray *islands;
	NSMutableArray *assets;
	Player *player;
	
	float scroll_pos_x, scroll_pos_y;
}

+(CCScene *) scene;
+(NSMutableArray*) loadIslands;
-(void) loadMap;

@end
