//
//  EditViewController.h
//  English
//
//  Created by miyamoto masaru on 2014/07/15.
//  Copyright (c) 2014年 miyamoto masaru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController <UITextFieldDelegate> {
    UITextField *activeField;
}
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UITextField *text4;

- (IBAction)decide:(id)sender;


@end
