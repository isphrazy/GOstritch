
#import "Resource.h"

@implementation Resource

static NSMutableDictionary* textures = nil;

+(void)init_textures {
    textures = [NSMutableDictionary dictionary];
    NSArray *temp = [[NSArray alloc] initWithObjects:
                     @"fg_tex.png", @"level1_island1_tex",
                     @"fg_top.png", @"level1_island1_top",
                     @"bird1_run1_ss.png", @"bird1_run1_ss",
                     
                     @"bg_layer1.png",@"level1_bg1",
                     @"bg_layer2.png",@"level1_bg2",
                     @"bg_layer3.png",@"level1_bg3",
                     nil];
    
    ccTexParams texParams = { GL_NEAREST, GL_NEAREST, GL_REPEAT, GL_REPEAT };
    for(int i = 0; i < [temp count]-1; i+=2) {
        NSLog(@"LOADING: %s->%s\n",[[temp objectAtIndex:i] UTF8String], [[temp objectAtIndex:(i+1)] UTF8String]);
        CCTexture2D* tex = [[CCTextureCache sharedTextureCache] addImage:[temp objectAtIndex:i]];
        [textures setObject:tex forKey:[temp objectAtIndex:(i+1)]];
        [tex setTexParameters: &texParams];
    }
}

+(CCTexture2D*)get_tex:(NSString*)key {
    return [textures objectForKey:key];
}

@end
