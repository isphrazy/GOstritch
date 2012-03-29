
#import "HelloWorldLayer.h"

@implementation HelloWorldLayer

//make scene, called by cc
+(CCScene *) scene {
	CCScene *scene = [CCScene node];
	HelloWorldLayer *layer = [HelloWorldLayer node];
	[scene addChild: layer];
	[[CCDirector sharedDirector] setDisplayFPS:NO];
	return scene;
}

-(id) init {
	self = [super initWithColor:ccc4(255,255,255,255)];
	if (self) {
		//NSLog([NSString stringWithFormat:@"(SCREENWID:%i, SCREENHEI:%i)",screen_width,screen_height]);
		
		/*CCLabelTTF *label = [CCLabelTTF labelWithString:@"test" fontName:@"Arial" fontSize:64];
		label.position =  CGPointMake(0,0);
		[self addChild: label];*/
		
		/*CCSprite *player = [CCSprite spriteWithFile:@"bird1_sprite.png"];		
		player.position = CGPointMake(0, 0);
		[self addChild: player];*/
		
		CGSize size = [[CCDirector sharedDirector] winSize];
		screen_width = size.width;
		screen_height = size.height;
		
		bg_elements = [self make_bg_elements];
		
		self.isTouchEnabled = YES;
		[self schedule:@selector(update:)];
	}
	return self;
}

-(NSMutableArray*) make_bg_elements {
	//NSMutableArray *new = [[NSMutableArray alloc] initWithObjects:@"a",@"b",@"c",nil]; //NEEDS TO END WITH NIL (wtf???)
	NSMutableArray *a = [[NSMutableArray alloc] init];
	int start = 3;
	int end = 1;
	
	for (int i = start; i >= end; i--) {
		NSString *res_loc = [[NSString alloc] initWithFormat:@"bg_layer%d.png",i];
		//NSString *res_loc = @"fg_test.png";
		CCSprite *bg_obj = [CCSprite spriteWithFile:res_loc];
		bg_obj.position = CGPointMake(0,0);
		bg_obj.anchorPoint = CGPointMake(0,0);
		[a addObject:bg_obj];
		[self addChild:bg_obj];
		[res_loc release];
	}
	
	return a;
}

-(void)update:(ccTime)dt {
	//NSLog([NSString stringWithFormat:@"%d",[bg_elements count]]);
	int i = 0;
	for (CCSprite* s in bg_elements) {
		i-=2;
		s.position = ccp(s.position.x+i,s.position.y);
		if (s.position.x <= -(s.contentSize.width-screen_width)) {
			s.position = ccp(0,s.position.y);
		}
		NSLog([NSString stringWithFormat:@"%f",s.position.x]);
	}
}


-(void) dealloc {
	[super dealloc];
}
@end
