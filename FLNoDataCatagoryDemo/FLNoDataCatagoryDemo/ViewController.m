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
    
    __weak typeof(self) weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view fl_hideNoDataView];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
