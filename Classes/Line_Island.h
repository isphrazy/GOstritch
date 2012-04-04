//
//  Line_Island.h
//  GOstrich
//
//  Created by Student User on 4/3/12.
//  Copyright 2012 University of Washington. All rights reserved.
//

#import "Island.h"


@interface Line_Island : Island {
	float min_range, max_range,slope;
}

@property float min_range, max_range, slope;
+(Line_Island*)init_pt1:(CGPoint)start pt2:(CGPoint)end;


@end
