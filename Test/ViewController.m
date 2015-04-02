//
//  ViewController.m
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import "ViewController.h"
#import "MHTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
//@property (nonatomic,strong) UIView *viewChild;
@property (nonatomic,strong) NSString *str1;
@property (nonatomic,weak) NSString *str2;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
//    UIView *viewChild = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 320, 150)];
//    viewChild.backgroundColor = [UIColor redColor];
//    
//    FirstViewController *theFirst = [[FirstViewController alloc] init];
//    SecondViewController *theSecond = [[SecondViewController alloc] init];
//    
//    MHTabBarController *tabBar = [[MHTabBarController alloc] init];
//    tabBar.viewControllers = @[theFirst,theSecond];
////    [self.viewChild addSubview:tabBar.view];
//    
//    
//    
//    [self.view addSubview:viewChild];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
