
#import "Line_Island.h"


@implementation Line_Island

@synthesize min_range,max_range,slope;

+(Line_Island*)init_pt1:(CGPoint)start pt2:(CGPoint)end {
	Line_Island *new_island = [Line_Island node];
	[new_island set_pt1:start pt2:end];
	[new_island calc_init];
	new_island.anchorPoint = ccp(0,0);
	
	new_island.pos_x = new_island.startX;
	new_island.pos_y = new_island.startY;
	new_island.position = ccp(new_island.pos_x,new_island.pos_y);
	
	return new_island;
	
}

-(void) draw { //TODO: Use a CCTexture2D to draw shit here
	[super draw];
	glColor4f(1.0f,0,0,1.0f);
	glLineWidth(2.0f);
	CGPoint p = [self position];
	ccDrawLine(ccp(0,0), ccp(endX-startX,endY-startY));
	
}

-(void)set_pt1:(CGPoint)start pt2:(CGPoint)end {
	startX = start.x;
	startY = start.y;
	endX = end.x;
	endY = end.y;
}

-(void)calc_init {
	min_range = startX;
	max_range = endX;
	slope = (endY - startY)/(endX - startY);
}

-(float)get_height:(float)pos {
	if (pos < min_range || pos > max_range) {
		return -1;
	} else {
		return startY+(pos-startX)*slope;
	}
}

@end
