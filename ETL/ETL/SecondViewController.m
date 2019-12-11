//
//  SecondViewController.m
//  ETL
//
//  Created by Brent on 12/11/19.
//  Copyright © 2019 ETLBrent. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize resultLabel, isValid;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (isValid)
        resultLabel.text = @"Thank You For Checking In!";
    else
        resultLabel.text = @"Please Enter A Valid UIN";
}

@end
