#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Common : NSObject {

}

+(CGPoint)line_seg_intersection_a1:(CGPoint)a1 a2:(CGPoint)a2 b1:(CGPoint)b1 b2:(CGPoint)b2;

typedef struct gl_render_obj {
	CCTexture2D *texture;
	CGPoint *tri_pts;
	CGPoint *tex_pts;
} gl_render_obj;

@end
