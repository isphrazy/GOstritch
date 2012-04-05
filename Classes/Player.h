#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Player : CCSprite {
	float vx,vy;
}

@property(readwrite,assign) float vx,vy;

@end
