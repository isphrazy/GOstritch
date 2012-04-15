
#import "Line_Island.h"
#import "PRFilledPolygon.h"

@implementation Line_Island

@synthesize min_range,max_range,slope;

+(Line_Island*)init_pt1:(CGPoint)start pt2:(CGPoint)end {
	Line_Island *new_island = [Line_Island node];
	[new_island set_pt1:start pt2:end];
	[new_island calc_init];
	new_island.anchorPoint = ccp(0,0);
	
	new_island.position = ccp(new_island.startX,new_island.startY);
	
	CCTexture2D *texture = [[CCTextureCache sharedTextureCache] addImage:@"pattern1.png"];
	/*
	 NSMutableArray *polygonPoints = [NSMutableArray arrayWithCapacity:10];
	 [polygonPoints addObject:[NSValue valueWithCGPoint:ccp(100,100)]];
	 */
	NSMutableArray *pts = [NSMutableArray array];
	[pts addObject:[NSValue valueWithCGPoint:ccp(0,0)]];
	/*if (new_island.slope > 0) {
		[pts addObject:[NSValue valueWithCGPoint:ccp(end.x-start.x,0)]];
	} else {
		[pts addObject:[NSValue valueWithCGPoint:ccp(0,end.y-start.y)]];
	}*/
	[pts addObject:[NSValue valueWithCGPoint:ccp(end.x-start.x,end.y-start.y)]];
	[pts addObject:[NSValue valueWithCGPoint:ccp(end.x-start.x,end.y-start.y-50)]];
	[pts addObject:[NSValue valueWithCGPoint:ccp(0,0-50)]];
	[new_island addChild:[PRFilledPolygon filledPolygonWithPoints:pts andTexture:texture]];
	
	return new_island;
	
}

-(void) draw { //TODO: Use a CCTexture2D to draw shit here
	[super draw];
	
	//Test draw code (calculates 100 pts)
	/*CGPoint points[100];
	int j = 0;
	for(int i = min_range; i<max_range;i+=(int)((max_range-min_range)/100)) {
		points[j]=ccp(i-[self position].x,[self get_height:(float)i]-[self position].y);
		j++;
	}
	glPointSize(3);
	glColor4ub(255,0,0,255);
	ccDrawPoints( points, 100);*/
	
	glColor4ub(0,0,255,100);
	glLineWidth(7.0f);
	CGPoint p = [self position];
	ccDrawLine(ccp(0,0), ccp(endX-[self position].x,endY-[self position].y));
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
	slope = (endY - startY)/(endX - startX);
}

-(float)get_height:(float)pos {
	if (pos < min_range || pos > max_range) {
		return -1;
	} else {
		return startY+(pos-startX)*slope;
	}
}

@end
