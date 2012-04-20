
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
	int start = 3;
	int end = 1;
	
	for (int i = start; i >= end; i--) {
		
		NSString *res_loc = [[NSString alloc] initWithFormat:@"level1_bg%d",i];
		CCSprite *bg_obj = [CCSprite spriteWithTexture:[Resource get_tex:res_loc]];
        bg_obj.position = ccp(0,0);
		bg_obj.anchorPoint = ccp(0,0);
		[a addObject:bg_obj];
		
		[res_loc release];
	}
	return a;
}

-(void)update:(ccTime)dt {
	int i = 0;
	for (CCSprite* s in bg_elements) {
		i-=2;
		s.position = ccp(s.position.x+i,s.position.y);
		if (s.position.x <= -(s.contentSize.width-[[CCDirector sharedDirector] winSize].width)) {
			s.position = ccp(0,s.position.y);
		}
	}
}

@end
