#import "cocos2d.h"

//def constructor return type and fields
@interface HelloWorldLayer : CCLayerColor { 
	int screen_width;
	int screen_height;
	
	NSMutableArray *bg_elements;
	CCSprite *fg; //temp
	CCSprite *player;
	
	
}

//def static methods
+(CCScene*) scene;

@end
