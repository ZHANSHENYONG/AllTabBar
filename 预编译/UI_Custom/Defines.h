//
//  Defines.h
//  UI_Custom
//
//  Created by yutao on 15/6/11.
//  Copyright (c) 2015年 yutao. All rights reserved.
//
//ifndef 表示,如果UI_Custom_Defines_h没有被宏定义(#define)过,则执行下面指令
#ifndef UI_Custom_Defines_h
#define UI_Custom_Defines_h


//DEBUG 模式为程序员调试模式, Release是发布模式是面向客户的,因为在Release模式下程序比DEBUG模式更优化,运行熟读更快
#if DEBUG

#define NSLog(FORMAT, ...) fprintf(stderr,"[%s:%d行] %s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

#else

#define NSLog(FORMAT, ...) nil

#endif


//如果是DEBUG模式用测试服务器地址
#if DEBUG

#define     HttpBaseURL        @"http://www.test.com/" // 测试服务器

#else

#define     HttpBaseURL        @"http://www.baidu.com/" // 正式服务器

#endif


//判断当前系统版本和手机类型
#define     iOS8     ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) ? YES : NO

#define     iPHone6   ([UIScreen mainScreen].bounds.size.height == 667) ? YES : NO


#endif

#define     YOUMENGKEY       @"5225ae5956240be8d70750dd"

#define AppDelegateInstance	                        ((AppDelegate*)([UIApplication sharedApplication].delegate))

#define DOCUMENTPAT [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]




//其中((AppDelegate *)[[UIApplication sharedApplication] delegate]) 必须的有最外层的(),可以在代码区里直接敲,然后拷贝到这里

#define SHAREDAPPDELE ((AppDelegate*)[[UIApplication sharedApplication] delegate])



#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/) \
[UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)




