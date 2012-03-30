#import "cocos2d.h"

//def constructor return type and fields
@interface GameEngineLayer : CCLayerColor { 
	int screen_width;
	int screen_height;
	
	NSMutableArray *bg_elements;
	CCSprite *fg; //temp
	CCSprite *player;
	
	bool touch_down;
	float player_vx;
	float player_vy;
	float ground_level;
}

//def static methods
+(CCScene*) scene;

@end
