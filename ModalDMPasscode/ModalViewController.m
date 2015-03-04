//
//  ModalViewController.m
//  ModalDMPasscode
//
//  Created by Mike Stanziano on 3/4/15.
//  Copyright (c) 2015 Temp. All rights reserved.
//

#import "ModalViewController.h"

#import <DMPasscode/DMPasscode.h>

@interface ModalViewController ()

@end

@implementation ModalViewController
- (IBAction)setPin:(id)sender
{
    [DMPasscode setupPasscodeInViewController:self
                                   completion:^(BOOL success, NSError *error) {
                                       NSLog(@"Hooray!");
                                   }];
}

- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
