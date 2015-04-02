//
//  TabBarViewController.m
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import "TabBarViewController.h"
#import "MHTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface TabBarViewController () <MHTabBarControllerDelegate>
//@property (nonatomic,strong) UIView *viewChild;
@end

@implementation TabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *viewChild = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 320, 150)];
    viewChild.backgroundColor = [UIColor grayColor];
    
    FirstViewController *theFirst = [[FirstViewController alloc] init];
    theFirst.title = @"The first";
    SecondViewController *theSecond = [[SecondViewController alloc] init];
    theSecond.title = @"The second";
    
    MHTabBarController *tabBar = [[MHTabBarController alloc] init];
    tabBar.delegate = self;

    tabBar.viewControllers = @[theFirst,theSecond];
    tabBar.view.backgroundColor = [UIColor clearColor];
    [tabBar willMoveToParentViewController:self];
    [viewChild addSubview:tabBar.view];
    tabBar.view.frame = viewChild.bounds;
    [self addChildViewController:tabBar];
    [self.view addSubview:viewChild];
    [tabBar didMoveToParentViewController:self];
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
