#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Player : CCSprite {
	float vx,vy;
	CCSprite* player_img;
}

@property(readwrite,assign) float vx,vy;
@property(readwrite,assign) CCSprite* player_img;

@end
