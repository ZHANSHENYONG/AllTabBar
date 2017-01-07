//
//  RootViewController.m
//  UI_Custom
//
//  Created by yutao on 15/1/15.
//  Copyright (c) 2015年 yutao. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    NSLog(@"如果有打印信息说明是DEBUG模式");


    NSString *url = [NSString stringWithFormat:@"%@login?name=%@&passwod=%@",HttpBaseURL,@"张三",@"123456"];
    NSLog(@"url = %@",url);

    if (iOS8) {
        NSLog(@"系统版本为IOS8");
    }
    

    if (iPHone6) {
        NSLog(@"手机型号为iPhone6");
    }


    NSLog(@"width = %f",SCREEN_WIDTH);

    NSLog(@"%@",DOCUMENTPAT);

    self.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);


    self.view.backgroundColor = RGBA(100, 222, 103, 1);

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
