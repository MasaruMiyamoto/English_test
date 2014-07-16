//
//  ViewController.m
//  English
//
//  Created by PhysLab on 2014/07/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.cells = [NSMutableArray array];
	self.tv.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}

//テーブルの行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cells count];
//    return 5;
}

//行に表示するデータ
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *tvcell = [tableView dequeueReusableCellWithIdentifier:@"cid"];
    if (tvcell == nil){
        tvcell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: @"cid"];
    }
    tvcell.textLabel.text = [[NSString alloc] initWithFormat:@"%d行目のセル",indexPath.row + 1];
    return tvcell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insertCell:(id)sender {
        
    [self.cells addObject:[[NSString alloc] initWithFormat:@"%d行目のセル",[self.cells count] + 1]];
     [self.tv reloadData];
}


- (IBAction)deleteAll:(id)sender {
    self.cells = [NSMutableArray array];
    [self.tv reloadData];
}

-(IBAction) cancelView:(UIStoryboardSegue *)segue{
}

-(IBAction) decideView:(UIStoryboardSegue *)segue{
    [self.cells addObject:[[NSString alloc] initWithFormat:@"%d行目のセル",[self.cells count] + 1]];
    [self.tv reloadData];
}
@end
