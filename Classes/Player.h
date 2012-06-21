#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Player : CCSprite {
	float vx,vy;
	CCSprite* player_img;
    
    float touch_count;
    float airjump_count;
}

@property(readwrite,assign) float vx,vy,touch_count,airjump_count;
@property(readwrite,assign) CCSprite* player_img;

@end
