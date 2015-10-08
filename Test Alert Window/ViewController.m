//
//  ViewController.m
//  Test Alert Window
//
//  Created by Ryan Zulkoski on 10/8/15.
//  Copyright © 2015 Ryan Zulkoski. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+Show.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)alertViewStyleMainWindowTapped {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"AlertViewStyle MainWindow"
                                                                             message:@"This is a UIAlertController being presented on the Main Window."
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    for (UIAlertAction *action in [self colorActions]) {
        [alertController addAction:action];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)alertViewStyleAlertWindowTapped {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"AlertViewStyle AlertWindow"
                                                                             message:@"This is a UIAlertController being presented on the Alert Window."
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    for (UIAlertAction *action in [self colorActions]) {
        [alertController addAction:action];
    }
    
    [alertController show];
}

- (IBAction)actionSheetStyleMainWindowTapped {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ActionSheetStyle MainWindow"
                                                                             message:@"This is a UIAlertController being presented on the Main Window."
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    for (UIAlertAction *action in [self colorActions]) {
        [alertController addAction:action];
    }
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (IBAction)actionSheetStyleAlertWindowTapped {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ActionSheetStyle AlertWindow"
                                                                             message:@"This is a UIAlertController being presented on the Alert Window."
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    for (UIAlertAction *action in [self colorActions]) {
        [alertController addAction:action];
    }
    
    [alertController show];
}

#pragma mark - Convenience Methods

- (NSArray<UIAlertAction *> *)colorActions {
    NSArray *colorStrings = @[@"Red", @"White", @"Blue"];
    NSMutableArray<UIAlertAction *> *colorActions = [NSMutableArray array];
    
    __weak typeof(self) weakSelf = self;
    for (NSString *colorString in colorStrings) {
        [colorActions addObject:[UIAlertAction actionWithTitle:colorString
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           [weakSelf setBackgroundColor:action.title];
                                                       }]];
    }
    
    [colorActions addObject:[UIAlertAction actionWithTitle:@"Dismiss"
                                                     style:UIAlertActionStyleCancel
                                                   handler:nil]];
    
    return [colorActions copy];
}

- (void)setBackgroundColor:(NSString *)colorString {
    
    if ([colorString isEqualToString:@"Red"]) {
        self.view.backgroundColor = [UIColor redColor];
    }
    else if ([colorString isEqualToString:@"White"]) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    else if ([colorString isEqualToString:@"Blue"]) {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

@end
