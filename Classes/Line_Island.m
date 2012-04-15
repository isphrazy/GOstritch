
#import "Line_Island.h"
#import "PRFilledPolygon.h"
#import "GameEngineLayer.h"

@implementation Line_Island

@synthesize min_range,max_range,slope;
@synthesize main_fill;

+(Line_Island*)init_pt1:(CGPoint)start pt2:(CGPoint)end {
	Line_Island *new_island = [Line_Island node];
	[new_island set_pt1:start pt2:end];
	[new_island calc_init];
	new_island.anchorPoint = ccp(0,0);
	new_island.position = ccp(new_island.startX,new_island.startY);
	
	/*CCTexture2D *texture = [[CCTextureCache sharedTextureCache] addImage:@"fg_tex.png"];
	NSMutableArray *pts = [NSMutableArray array];
	[pts addObject:[NSValue valueWithCGPoint:ccp(0,0)]];
	[pts addObject:[NSValue valueWithCGPoint:ccp(end.x-start.x,end.y-start.y)]];
	[pts addObject:[NSValue valueWithCGPoint:ccp(end.x-start.x,end.y-start.y-50)]];
	[pts addObject:[NSValue valueWithCGPoint:ccp(0,0-50)]];
	[new_island addChild:[PRFilledPolygon filledPolygonWithPoints:pts andTexture:texture]];*/
	
	[new_island init_tex];
	[new_island init_top];
	
	return new_island;
	
}

/*NOTE1:
 glrender calls are offset by node x,y*/

/*NOTE2: rotate uv coords
 (0,1)--(1,1)        (0,0)--(1,0)
 |      |     -->    |      |
 (0,0)--(1,0)        (0,1)--(1,1)*/

/*NOTE3: to draw quad, this order
 vertex:       uv:
 (4)--(3)      (2)--(1)
 |    |   -->  |    |
 (2)--(1)      (4)--(3)
 then glDrawArrays(offset++)*/
-(void)init_tex {
	main_fill.texture = [[CCTextureCache sharedTextureCache] addImage:@"fg_tex.png"];
	ccTexParams texParams = { GL_NEAREST, GL_NEAREST, GL_REPEAT, GL_REPEAT };
	[main_fill.texture setTexParameters: &texParams];
	
	main_fill.tri_pts = (CGPoint*) malloc(sizeof(CGPoint)*4);
	main_fill.tex_pts = (CGPoint*) malloc(sizeof(CGPoint)*4);
	
	CGPoint* tri_pts = main_fill.tri_pts;
	CGPoint* tex_pts = main_fill.tex_pts;
	CCTexture2D* texture = main_fill.texture;
	
	tri_pts[0] = ccp(endX-startX,endY-startY-30);
	tri_pts[1] = ccp(0,-30);
	tri_pts[2] = ccp(endX-startX,endY-startY);
	tri_pts[3] = ccp(0,0);
	
	tex_pts[2] = ccp(tri_pts[2].x/texture.pixelsWide, tri_pts[2].y/texture.pixelsHigh);
	tex_pts[3] = ccp(tri_pts[3].x/texture.pixelsWide, tri_pts[3].y/texture.pixelsWide);
	tex_pts[0] = ccp(tri_pts[0].x/texture.pixelsWide, tri_pts[0].y/texture.pixelsWide);
	tex_pts[1] = ccp(tri_pts[1].x/texture.pixelsWide, tri_pts[1].y/texture.pixelsWide);
}

-(void)init_top {
	top_fill.texture = [[CCTextureCache sharedTextureCache] addImage:@"fg_top.png"];
	ccTexParams texParams = { GL_NEAREST, GL_NEAREST, GL_REPEAT, GL_REPEAT };
	[top_fill.texture setTexParameters: &texParams];
	
	top_fill.tri_pts = (CGPoint*) malloc(sizeof(CGPoint)*4);
	top_fill.tex_pts = (CGPoint*) malloc(sizeof(CGPoint)*4);
	
	CGPoint* tri_pts = top_fill.tri_pts;
	CGPoint* tex_pts = top_fill.tex_pts;
	CCTexture2D* texture = top_fill.texture;
	
	float dist = sqrt(pow(endX-startX, 2)+pow(endY-startY, 2));
	
	tri_pts[0] = ccp(dist,-100);
	tri_pts[1] = ccp(0,-100);
	tri_pts[2] = ccp(dist,0);
	tri_pts[3] = ccp(0,0);
	
	tex_pts[0] = ccp(tri_pts[2].x/texture.pixelsWide, tri_pts[2].y/texture.pixelsHigh);
	tex_pts[1] = ccp(tri_pts[3].x/texture.pixelsWide, tri_pts[3].y/texture.pixelsWide);
	tex_pts[2] = ccp(tri_pts[0].x/texture.pixelsWide, tri_pts[0].y/texture.pixelsWide);
	tex_pts[3] = ccp(tri_pts[1].x/texture.pixelsWide, tri_pts[1].y/texture.pixelsWide);
}

-(void) draw {
	if (endX < [GameEngineLayer get_cur_pos_x]-250 ||
		startY > [GameEngineLayer get_cur_pos_y]+250) {
		return;
	} 
	[super draw];
	
	
	
	/*glColor4ub(0,0,255,100);
	glLineWidth(7.0f);
	ccDrawLine(ccp(0,0), ccp(endX-[self position].x,endY-[self position].y));*/
	
	glPushMatrix();
	glBindTexture(GL_TEXTURE_2D, main_fill.texture.name);
	glVertexPointer(2, GL_FLOAT, 0, main_fill.tri_pts); //coord per vertex, type, stride, pointer to array
	glTexCoordPointer(2, GL_FLOAT, 0, main_fill.tex_pts);
	glDrawArrays(GL_TRIANGLES, 0, 3); //drawtype,offset,pts
	glDrawArrays(GL_TRIANGLES, 1, 3);
	glPopMatrix();
	
	glPushMatrix();
	glTranslatef(0,100,0);
	if (slope > 0) { //TODO -- THIS IS A HACK, FIX THIS (rotate about bottom left)
		glTranslatef(-slope*70,-slope*35,0);
	} else if (slope < 0) {
		glTranslatef(slope*70,slope*35,0);
	}
	glRotatef(rot,0,0,1.0f);
	glBindTexture(GL_TEXTURE_2D, top_fill.texture.name);
	glVertexPointer(2,GL_FLOAT,0,top_fill.tri_pts);
	glTexCoordPointer(2,GL_FLOAT,0,top_fill.tex_pts);
	glDrawArrays(GL_TRIANGLES, 0, 3);
	glDrawArrays(GL_TRIANGLES, 1, 3);
	glPopMatrix();
	
}

//GL_DECAL -> literal tex color, GL_BLEND -> blend with bg, GL_MODULATE -> normal render
//glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

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
	rot = atan((endY-startY)/(endX-startX))*(180/M_PI);
}

-(float)get_height:(float)pos {
	if (pos < min_range || pos > max_range) {
		return -1;
	} else {
		return startY+(pos-startX)*slope;
	}
}

@end
