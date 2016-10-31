//
//  ViewController.m
//  FLNoDataCatagoryDemo
//
//  Created by clarence on 16/10/31.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "UIView+NOData.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view fl_showNoDataViewOperation:^{
        NSLog(@"hello world");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
