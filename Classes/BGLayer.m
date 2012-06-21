
#import "BGLayer.h"
#import "Resource.h"


@implementation BGLayer

-(id) init{
	if( (self=[super init])) {
		bg_elements = [BGLayer loadBg];
		for (CCSprite* i in bg_elements) {
			[self addChild:i];
		}
		[self schedule:@selector(update:)];
	}
	return self;
}

+(NSMutableArray*) loadBg {
	NSMutableArray *a = [[NSMutableArray alloc] init];
    
    [a addObject:[BackgroundObject backgroundFromTex:[Resource get_tex:@"bg_sky"] scrollspd_x:0 scrollspd_y:0]];
    [a addObject:[BackgroundObject backgroundFromTex:[Resource get_tex:@"bg_layer_2"] scrollspd_x:0.9 scrollspd_y:0.9]];
    [a addObject:[BackgroundObject backgroundFromTex:[Resource get_tex:@"bg_layer_1"] scrollspd_x:0.25 scrollspd_y:0.15]];

    return a;
}

-(void)update:(ccTime)dt {
	for (BackgroundObject* s in bg_elements) {
        CGSize textureSize = s.textureRect.size;
        [s setTextureRect:CGRectMake([GameEngineLayer get_cur_pos_x]*s.scrollspd_x, 0, textureSize.width, textureSize.height)];
        s.position = ccp(0,-[GameEngineLayer get_cur_pos_y]*s.scrollspd_y);
	}
}

@end
