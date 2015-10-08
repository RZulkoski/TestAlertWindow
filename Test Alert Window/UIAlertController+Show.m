//
//  UIAlertController+Show.m
//  Test Alert Window
//
//  Created by Ryan Zulkoski on 10/8/15.
//  Copyright © 2015 Ryan Zulkoski. All rights reserved.
//

#import "UIAlertController+Show.h"
#import "AppDelegate.h"

@implementation UIAlertController (Show)

- (void)show {
    [self showAnimated:YES];
}

- (void)showAnimated:(BOOL)animated {
    [APP.alertWindow.rootViewController presentViewController:self animated:YES completion:nil];
}

- (void)dismiss {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

+ (void)dismissActiveAlertController {
    [self dismissActiveAlertControllerAnimated:YES];
}

+ (void)dismissActiveAlertControllerAnimated:(BOOL)animated {
    [APP.alertWindow.rootViewController dismissViewControllerAnimated:animated completion:nil];
}

@end
