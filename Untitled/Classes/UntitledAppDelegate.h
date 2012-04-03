//
//  UntitledAppDelegate.h
//  Untitled
//
//  Created by Student User on 4/2/12.
//  Copyright University of Washington 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface UntitledAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
