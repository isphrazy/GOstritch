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
#import "Common.h"
#import "BGLayer.h"

@interface GameEngineLayer : CCLayer {
	NSMutableArray *islands;
	Player *player;
	BOOL is_touch;
}

+(float) get_cur_pos_x;
+(float) get_cur_pos_y;

+(CCScene *) scene;
+(NSMutableArray*) loadIslands;
+(CGPoint)line_seg_intersection_a1:(CGPoint)a1 a2:(CGPoint)a2 b1:(CGPoint)b1 b2:(CGPoint)b2;
-(void) loadMap;

@end
