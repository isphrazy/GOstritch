//
//  Resource.h
//  GOstrich
//
//  Created by Student User on 4/20/12.
//  Copyright (c) 2012 University of Washington. All rights reserved.
//

#import "cocos2d.h"

@interface Resource : NSObject

+(void)init_textures;
+(CCTexture2D*)get_tex:(NSString*)key;

@end
