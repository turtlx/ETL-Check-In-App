//
//  ViewController.m
//  ETL
//
//  Created by Brent on 11/25/19.
//  Copyright © 2019 ETLBrent. All rights reserved.
//

#import "ViewController.h"

int debug = 1;

int StringToInt(NSString* a) {
    int b = [a integerValue];
    return b;
}

int StringLength(NSString* a) {
    return a.length;
}

@interface ViewController ()

@end

@implementation ViewController
@synthesize Submit, UIN;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIN.keyboardType = UIKeyboardTypeNumberPad;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Segue"]) {
        SecondViewController *secondvc = [segue destinationViewController];
        secondvc.isValid = maybe;
    }
}

- (IBAction)SubmitPressed:(id)sender {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"ddMMyyyy-HH:mm"];

    NSDate *currentDate = [NSDate date];
    NSString *dateString = [formatter stringFromDate:currentDate];
    
    secondVC.isValid = NO;
    maybe = NO;
    
    NSLog(@"Input: %@ ", UIN.text);
    if (StringLength(UIN.text) == 9) {
        if (debug) NSLog(@"Valid\n");
        NSString *baseURL = @"https://script.google.com/macros/s/AKfycbwBLLNODJ9Y7JDEDQHbtAG8A7HlshMe2M4fZJD_a07cCd2O_ic/exec?post=true";
        NSString *appendURL = [@"&column1=" stringByAppendingString:UIN.text];
        appendURL = [appendURL stringByAppendingString:@"&column2="];
        appendURL = [appendURL stringByAppendingString:dateString];
        NSString *requestURL = [baseURL stringByAppendingString:appendURL];
        NSURL *url = [NSURL URLWithString:requestURL];
        if (debug) NSLog(@"%@", requestURL);

        NSURLSession *session = [NSURLSession sharedSession];

        __block NSURLResponse *postResponse;
        NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^(void) {
                postResponse = response;
                if (debug)
                    if (response) NSLog(@"Success\n");
            });
        }];

        [dataTask resume];
        // return postResponse;
        
        secondVC.isValid = YES;
        maybe = YES;
    }
    else {
        NSLog(@"Invalid\n");
    }
}

- (void)Reset {
    
}

@end
