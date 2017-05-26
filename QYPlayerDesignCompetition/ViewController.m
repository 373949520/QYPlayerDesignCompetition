//
//  ViewController.m
//  QYPlayerDesignCompetition
//
//  Created by 肖杰 on 2017/5/22.
//  Copyright © 2017年 肖杰. All rights reserved.
//

#import "ViewController.h"
#import "ImformationTopBarView.h"
@interface ViewController (){
    CGFloat width;
    CGFloat height;
}

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:false];
//    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
    ImformationTopBarView *topView = [[ImformationTopBarView alloc]initWithFrame:CGRectMake(0, 0, width, 80)];
    topView.optionArray = @[@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw",@"eqw"];
    [self.view addSubview:topView];
    
   // [self.view addSubview:topBar];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
}


@end
