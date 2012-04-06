#import "Player.h"
#import "CCDrawingPrimitives.h";

@implementation Player
@synthesize vx,vy;

+(Player*)init {
	Player *new_player = [Player node];
	new_player.anchorPoint = ccp(0,0);
	return new_player;
}

-(void) draw {
	[super draw];
	glColor4f(0.0,1.0f,0,1.0f);
	int a = 1;
	ccDrawCircle(ccp(0,10), 10, 0, 10, NO);
	
	CGPoint points[] = { ccp(0,0) };
	glPointSize(3);
	glColor4ub(0,255,255,255);
	ccDrawPoints( points, 1);
}

@end
