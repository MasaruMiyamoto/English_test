//
//  ViewController.h
//  English
//
//  Created by PhysLab on 2014/07/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tv;

@property NSMutableArray *cells;

- (IBAction)insertCell:(id)sender;
- (IBAction)deleteAll:(id)sender;


@end
