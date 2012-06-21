

#import "BackgroundObject.h"

@implementation BackgroundObject
@synthesize scrollspd_x, scrollspd_y;

+(BackgroundObject*) backgroundFromTex:(CCTexture2D *)tex scrollspd_x:(float)spdx scrollspd_y:(float)spdy {
    
    BackgroundObject *bg = [BackgroundObject spriteWithTexture:tex];
    bg.scrollspd_x = spdx;
    bg.scrollspd_y = spdy;
    bg.anchorPoint = CGPointZero;
    bg.position = CGPointZero;
    ccTexParams par = {GL_LINEAR, GL_LINEAR, GL_REPEAT, GL_REPEAT};
    [bg.texture setTexParameters:&par];
    return bg;
}

@end
