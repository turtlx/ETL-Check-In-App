//
//  SecondViewController.h
//  ETL
//
//  Created by Brent on 12/11/19.
//  Copyright © 2019 ETLBrent. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (nonatomic, assign) BOOL isValid;

@end

NS_ASSUME_NONNULL_END
