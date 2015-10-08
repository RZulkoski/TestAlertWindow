//
//  UIAlertController+Show.h
//  Test Alert Window
//
//  Created by Ryan Zulkoski on 10/8/15.
//  Copyright © 2015 Ryan Zulkoski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Show)

- (void)show;
- (void)showAnimated:(BOOL)animated;
- (void)dismiss;

+ (void)dismissActiveAlertController;
+ (void)dismissActiveAlertControllerAnimated:(BOOL)animated;

@end
