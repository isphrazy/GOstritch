
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
	//self = [super initWithColor:ccc4(255,255,255,255)];
	self = [super init];
	if (self) {
		/*CCLabelTTF *label = [CCLabelTTF labelWithString:@"test" fontName:@"Arial" fontSize:64];
		label.position =  CGPointMake(0,0);
		[self addChild: label];*/
		
		CGSize size = [[CCDirector sharedDirector] winSize];
		screen_width = size.width;
		screen_height = size.height;
		
		bg_elements = [self make_bg_elements];
		fg = [self make_fg];
		player = [self make_player];
		
		self.isTouchEnabled = YES;
		[self schedule:@selector(update:)];
	}
	return self;
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
	}
}

-(void) ccTouchesBegan:(NSSet*)pTouches withEvent:(UIEvent*)pEvent { //ccTouchesBeganWithEvent
	/*UITouch *myTouch = [pTouches anyObject];
	CGPoint location = [myTouch locationInView:[myTouch view]];
	location = [[CCDirector sharedDirector] convertToGL:location];
	NSLog([NSString stringWithFormat:@"%f,%f",location.x,location.y]);*/
}

-(void) ccTouchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
}

-(void) ccTouchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
}

-(NSMutableArray*) make_bg_elements {
	//NSMutableArray *new = [[NSMutableArray alloc] initWithObjects:@"a",@"b",@"c",nil]; //NEEDS TO END WITH NIL (wtf???)
	NSMutableArray *a = [[NSMutableArray alloc] init];
	int start = 3;
	int end = 1;
	
	for (int i = start; i >= end; i--) {
		NSString *res_loc = [[NSString alloc] initWithFormat:@"bg_layer%d.png",i];
		CCSprite *bg_obj = [CCSprite spriteWithFile:res_loc];
		bg_obj.position = ccp(0,0);
		bg_obj.anchorPoint = ccp(0,0);
		
		//[bg_obj setTextureRect: CGRectMake(0,0,screen_width/1.2,screen_height)];
		
		[a addObject:bg_obj];
		[self addChild:bg_obj];
		[res_loc release];
	}
	
	return a;
}

-(CCSprite*) make_fg {
	CCSprite *tmp = [CCSprite spriteWithFile:@"fg_test.png"];
	tmp.anchorPoint = ccp(0,0);
	tmp.position = ccp(0,0);
	[self addChild:tmp];
	return tmp;
}

-(CCSprite*) make_player { //sprite height is 102 (TODO:parameterize or read from sprite)
	CCSprite *tmp = [CCSprite spriteWithFile:@"bird1_sprite.png"];
	tmp.anchorPoint = ccp(0,0);
	tmp.position = ccp(40,20);
	[self addChild:tmp];
	return tmp;
}

-(void) dealloc {
	[super dealloc];
	for (CCSprite* s in bg_elements) {
		[s dealloc];
	}
	[bg_elements dealloc];
	[fg dealloc];
	[player dealloc];
}
@end
