//
//  EditViewController.m
//  English
//
//  Created by miyamoto masaru on 2014/07/15.
//  Copyright (c) 2014年 miyamoto masaru. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"hoge");
    // Do any additional setup after loading the view.
    
    for (id v in self.view.subviews){
        if([v isKindOfClass:[UITextField class]]){
            ((UITextField*)v).delegate = self;
        }
    }
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardDidShowNotification object:nil];
    
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleDefault;
    [toolBar sizeToFit];
    
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *_commitBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeKeyboard:)];
    
    UIBarButtonItem *_previousBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 target:self action:@selector(previousKeyboard:)];
    
    UIBarButtonItem *_nextBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:102 target:self action:@selector(nextKeyboard:)];
    
    NSArray *toolBarItems = [NSArray arrayWithObjects:_previousBtn,_nextBtn,spacer,_commitBtn, nil];
    [toolBar setItems:toolBarItems animated:YES];
    
    self.text1.inputAccessoryView = toolBar;
    self.text2.inputAccessoryView = toolBar;
    self.text3.inputAccessoryView = toolBar;
    self.text4.inputAccessoryView = toolBar;
    
}

- (void)closeKeyboard:(id)sender{
    //    [self.scroll setContentOffset:CGPointZero animated:YES];
    [activeField resignFirstResponder];
}

-(void)previousKeyboard:(id)sender{
    [[self.view viewWithTag:activeField.tag-1] becomeFirstResponder];
}

-(void)nextKeyboard:(id)sender{
    [[self.view viewWithTag:activeField.tag+1] becomeFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    //メンバ変数activeFieldに選択されたテキストフィールドを代入
    activeField = textField;
    return YES;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)decide:(id)sender {
    NSLog(@"%@",self.text1.text);
//    if(self.text1.text == nil){
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"警告"
                              message:@"単語が入力されていません"
                              delegate:self
                              cancelButtonTitle:@"cancel"
                              otherButtonTitles:@"OK", nil];
        [alert show];
//    }
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        
    }else{
        
    }
}

@end
