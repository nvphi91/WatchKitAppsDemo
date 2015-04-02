//
//  SecondViewController.h
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "FirstViewController.h"
@interface SecondViewController : UIViewController
@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *arr;
@end
