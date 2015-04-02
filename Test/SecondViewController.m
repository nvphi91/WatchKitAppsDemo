//
//  SecondViewController.m
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import "SecondViewController.h"
#import "MHTabBarController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.title = @"The Second";
//    NSString *str1 = @"Phi";
//    NSString *str2 = @"Phi";
//    if ([str1 caseInsensitiveCompare:str2] == NSOrderedSame) {
//        NSLog(@"same");
//    }else{
//        NSLog(@"no");
//    }
//    self.person = [[Person alloc] init];
//    self.person.name = @"Thanh";
//    self.person.age = 23;
//    
//    NSLog(@"Name : %@ age : %i",self.person.name,self.person.age);
    
//    [self.person observeValueForKeyPath:@"name" ofObject:self.person.name change:nil context:nil];
    [[NSUserDefaults standardUserDefaults] setObject:self.arr forKey:@"arr"];
    
    NSLog(@"arr : %@",self.arr);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (MHTabBarItem *)mh_tabBarItem{
//    UIImage *image = [UIImage imageNamed:@"2.png"];
//    UIImage *selectedImage = [UIImage imageNamed:@"2.png"];
//    return [MHTabBarItem tabBarItemWithImage:image selectedImage:selectedImage];
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
