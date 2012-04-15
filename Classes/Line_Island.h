//
//  Line_Island.h
//  GOstrich
//
//  Created by Student User on 4/3/12.
//  Copyright 2012 University of Washington. All rights reserved.
//

#import "Island.h"
#import "Common.h"


@interface Line_Island : Island {
	float min_range, max_range,slope;
	gl_render_obj main_fill;
	gl_render_obj top_fill;
	float rot;
}

@property(readwrite,assign)  float min_range, max_range, slope;
@property(readwrite,assign) gl_render_obj main_fill;
+(Line_Island*)init_pt1:(CGPoint)start pt2:(CGPoint)end;


@end
