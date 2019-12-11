//
//  ViewController.h
//  ETL
//
//  Created by Brent on 11/25/19.
//  Copyright © 2019 ETLBrent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController {
    int input;
    SecondViewController *secondVC;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *Submit;
- (IBAction)SubmitPressed:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *UIN;

@end
