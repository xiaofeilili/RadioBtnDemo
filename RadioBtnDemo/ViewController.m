//
//  ViewController.m
//  RadioBtnDemo
//
//  Created by 李晓飞 on 2017/3/23.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "ViewController.h"
#import "RadioView.h"

#define kScreenWidth    [UIScreen mainScreen].bounds.size.width
#define kScreenHeight   [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    RadioView *radioView = [[RadioView alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, 200)];
    radioView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:radioView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
