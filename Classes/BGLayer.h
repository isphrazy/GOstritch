#import "cocos2d.h"
#import <Foundation/Foundation.h>
#import "BackgroundObject.h"
#import "GameEngineLayer.h"


@interface BGLayer : CCLayer {
	NSMutableArray *bg_elements;
}

+(NSMutableArray*) loadBg;
@end
