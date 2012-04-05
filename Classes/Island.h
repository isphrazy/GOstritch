//
//  Island.h
//  GOstrich
//
//  Created by Pingyang He on 4/3/12.
//  
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Island : CCSprite {
	float startX, startY, endX, endY;
}

@property(readwrite,assign)  float startX, startY, endX, endY;

-(float)get_height:(float)pos;


@end
