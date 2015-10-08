//
//  AppDelegate.h
//  Test Alert Window
//
//  Created by Ryan Zulkoski on 10/8/15.
//  Copyright © 2015 Ryan Zulkoski. All rights reserved.
//

#import <UIKit/UIKit.h>

#define APP ((AppDelegate *)[[UIApplication sharedApplication] delegate])

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIWindow *alertWindow;

@end

