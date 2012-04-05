#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Player : CCSprite {
	float pos_x, pos_y,vx,vy;
}

@property(readwrite,assign) float pos_x,pos_y,vx,vy;

@end
