//
//  ConnectViewController.m
//  Joker
//
//  Created by 猫儿出墙 on 16/4/28.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#define UIColorFromRGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

#import "ConnectViewController.h"
#import "ConnectTableViewController.h"
#import "ChatTableViewController.h"

#import <Masonry.h>

@interface ConnectViewController ()

@end

@implementation ConnectViewController {
    UINavigationController *_nav;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nav = [[UINavigationController alloc] init];
    [self.view addSubview:_nav.view];
    
    ConnectTableViewController *connectTVC = [[ConnectTableViewController alloc] init];
    ChatTableViewController *chatTVC = [[ChatTableViewController alloc] init];
    connectTVC.tabBarItem.image = [[UIImage imageNamed:@"contact"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    chatTVC.tabBarItem.image = [[UIImage imageNamed:@"chat"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    connectTVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
//    chatTVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    [self addChildViewController:connectTVC];
    [self addChildViewController:chatTVC];

}



@end
