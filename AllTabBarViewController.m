//
//  AllTabBarViewController.m
//  A Learning Walk
//
//  Created by 张勇 on 16/6/13.
//  Copyright © 2016年 战斗民族. All rights reserved.
//

#import "AllTabBarViewController.h"
#import "RecommendViewController.h"
#import "FindViewController.h"
#import "MapViewController.h"
#import "MineViewController.h"
#import "PlayViewController.h"

#import "newestViewController.h"
#import "expressViewController.h"
#import "videoViewController.h"
#import "newsViewController.h"
#import "carViewController.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height
#define WSColor(r, g, b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0f]
@interface AllTabBarViewController ()

@end

@implementation AllTabBarViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setAutomaticallyAdjustsScrollViewInsets:YES];
    self.navigationController.navigationBar.translucent = NO;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    RecommendViewController *recommendVC = [[RecommendViewController alloc]init];
    UINavigationController *recommendNa = [[UINavigationController alloc] initWithRootViewController:recommendVC];
    recommendNa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:[UIImage imageNamed:@"tab_shouye_baitian"] selectedImage:[[UIImage imageNamed:@"tab_shouye_baitian_hit"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [recommendVC release];
    
    FindViewController *findVC = [[FindViewController alloc] init];
    UINavigationController *findNa = [[UINavigationController alloc] initWithRootViewController:findVC];
    findNa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"tabbar_find_n"] selectedImage:[[UIImage imageNamed:@"tabbar_find_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [findVC release];
    
    PlayViewController *playVC = [[PlayViewController alloc] init];
    UINavigationController *playNa = [[UINavigationController alloc] initWithRootViewController:playVC];
    playNa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"听音乐" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    [playVC release];
    
    MapViewController *mapVC = [[MapViewController alloc] init];
    UINavigationController *mapNa = [[UINavigationController alloc] initWithRootViewController:mapVC];
    mapNa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"定位" image:[UIImage imageNamed:@"tab_map_heiye"] selectedImage:[[UIImage imageNamed:@"tab_map_heiye_hit"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [mapVC release];
    
    MineViewController *minaVC = [[MineViewController alloc] init];
    UINavigationController *mineNa = [[UINavigationController alloc] initWithRootViewController:minaVC];
    mineNa.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tabbar_me_n"] selectedImage:[[UIImage imageNamed:@"tabbar_me_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [minaVC release];
    

    // 2.初始化tabBarCtr
    self.viewControllers = @[recommendNa,findNa,playNa,mapNa,mineNa];
   
    
    self.tabBar.dk_tintColorPicker = DKColorPickerWithRGB(0xFF7F00,0x9F79EE);//选中颜色
    [recommendNa release];
    [findNa release];
    [playNa release];
    [mapNa release];
    [mineNa release];
    
    //重写中间的tabbar
    UIView *myView = [[UIView alloc] init];
    myView.frame = CGRectMake(self.tabBar.frame.size.width /5 *2, 0, self.tabBar.frame.size.width /5, self.tabBar.frame.size.height);
    myView.backgroundColor = [UIColor clearColor];
    [self.tabBar addSubview:myView];
    //灰色边框
    UIView *BGView = [[UIView alloc] initWithFrame:CGRectMake(myView.frame.size.width / 7 - 0.5 , -(myView.frame.size.height / 3 + 0.5), myView.frame.size.width / 7 * 5 + 1, myView.frame.size.width / 7 * 5 + 1)];
    BGView.backgroundColor = [UIColor lightGrayColor];
    BGView.layer.masksToBounds = YES;
    BGView.layer.cornerRadius = BGView.frame.size.width / 2;
    [myView addSubview:BGView];
    //重写中间tabbar的白色外框
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(myView.frame.size.width / 7 , -myView.frame.size.height / 3, myView.frame.size.width / 7 * 5, myView.frame.size.height / 3 * 6)];
    centerView.backgroundColor = [UIColor whiteColor];
    centerView.layer.masksToBounds = YES;
    centerView.layer.cornerRadius = centerView.frame.size.width / 2;
    [myView addSubview:centerView];
    //播放用的圆形image图片
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(5, 5, centerView.frame.size.width - 10, centerView.frame.size.width - 10);
    button.backgroundColor = [UIColor greenColor];
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = button.frame.size.width / 2;
    [button addTarget:self action:@selector(palyerChangeAction:) forControlEvents:UIControlEventTouchUpInside];
    [centerView addSubview:button];
    
    [myView release];
    [BGView release];
    [centerView release];
   
    
    //改变导航栏颜色(所有的导航栏颜色)
    [[UINavigationBar appearance] setBarTintColor:WSColor(120, 163, 200)];
    
    
    // Do any additional setup after loading the view.
}

-(void)palyerChangeAction:(UIButton *)button{

    [[NSNotificationCenter defaultCenter] postNotificationName:@"playChange" object:nil];

}




@end
