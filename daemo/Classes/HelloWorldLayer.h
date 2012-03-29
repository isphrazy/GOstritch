#import "cocos2d.h"

//def constructor return type and fields
@interface HelloWorldLayer : CCLayerColor { 
	int screen_width;
	int screen_height;
	NSMutableArray *bg_elements;
	CCSprite *player;
}

//def static methods
+(CCScene*) scene;
//+(NSArray*) make_bg_elements;

@end
