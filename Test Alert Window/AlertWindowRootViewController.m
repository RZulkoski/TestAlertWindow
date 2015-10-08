//
//  AlertWindowRootViewController.m
//  Test Alert Window
//
//  Created by Ryan Zulkoski on 10/8/15.
//  Copyright © 2015 Ryan Zulkoski. All rights reserved.
//

#import "AlertWindowRootViewController.h"
#import "AppDelegate.h"

@interface AlertWindowRootViewController ()
@property (weak, nonatomic) UIAlertController *activeAlertController;
@end

@implementation AlertWindowRootViewController

- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion {
    
    if (!self.activeAlertController && [viewControllerToPresent isKindOfClass:[UIAlertController class]]) {
        [APP.alertWindow makeKeyAndVisible];
        
        self.activeAlertController = (UIAlertController *)viewControllerToPresent;
        
        [super presentViewController:viewControllerToPresent animated:flag completion:completion];
    }
}

- (void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion {
    [super dismissViewControllerAnimated:flag completion:^{
        self.activeAlertController = nil;
        
        [APP.window makeKeyAndVisible];
        APP.alertWindow.hidden = YES;
    }];
}

@end
