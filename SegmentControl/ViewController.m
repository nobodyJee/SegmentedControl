//
//  ViewController.m
//  SegmentControl
//
//  Created by JiWuChao on 16/9/1.
//  Copyright © 2016年 JiWuChao. All rights reserved.
//

#import "ViewController.h"

#import "Masonry.h"

#import "CustomSegmentedControl.h"

@interface ViewController ()<CustomSegmentedControlDelegate>


@property (nonatomic, strong)CustomSegmentedControl *scontr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setControl];
}

- (void)setControl{
    // 1 调用定义圆角半经的方法
    _scontr = [CustomSegmentedControl creatSegmentedControlWithTitle:@[@"第一季度",@"第二季度"] withRadius:10];
    // 2 调用默认圆角半径的方法 默认为4
//    _scontr = [CustomSegmentedControl creatSegmentedControlWithTitle:@[@"第一季度",@"第二季度"]];
    
    _scontr.delegate = self;
    [self.view addSubview:_scontr];
    [_scontr mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(self.view);
        make.height.mas_equalTo(40);
        make.top.equalTo(self.view.mas_top).offset(45);
    }];
}

#pragma mark - CustomSegmentedControlDelegate

- (void)didSelectSegmentWithIndex:(NSInteger)index{
    NSLog(@"--->%ld",index);
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
