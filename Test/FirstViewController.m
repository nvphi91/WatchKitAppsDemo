//
//  FirstViewController.m
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import "FirstViewController.h"
#import "MHTabBarController.h"
#define DEGREES_IN_RADIANS(x) (M_PI * x / 180.0);
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.viewSub.bounds byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(10.0, 10.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.view.bounds;
    maskLayer.path  = maskPath.CGPath;
    self.viewSub.layer.mask = maskLayer;
    
    UIBezierPath *maskPath1 = [UIBezierPath bezierPathWithRoundedRect:self.tx.bounds byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight) cornerRadii:CGSizeMake(10.0, 10.0)];
    
    CAShapeLayer *maskLayer1 = [[CAShapeLayer alloc] init];
    maskLayer1.frame = self.view.bounds;
    maskLayer1.path  = maskPath1.CGPath;
    self.tx.layer.mask = maskLayer1;
    
    [UIView animateWithDuration:2.0f
                          delay:0.1f
                        options:UIViewAnimationOptionTransitionCrossDissolve
                     animations:^{
//                         [self.tx setCenter:CGPointMake(0, 0)];
                         [self.tx setAlpha:0.0f];
                     }
                     completion:^(BOOL finished){
//                         [self.tx removeFromSuperview];
                         [self.tx setAlpha:1.0f];
                     }
     ];
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"cell";
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    cell.textLabel.text = @"nguyen van phi";
    return cell;
}
@end
