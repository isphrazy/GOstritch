//
//  ios_test_1AppDelegate.h
//  ios-test-1
//
//  Created by Student User on 3/27/12.
//  Copyright University of Washington 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface ios_test_1AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
