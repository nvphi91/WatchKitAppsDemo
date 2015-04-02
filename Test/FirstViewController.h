//
//  FirstViewController.h
//  Test
//
//  Created by Nguyen Van Phi on 10/16/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import <MessageUI/MessageUI.h>
#import "SecondViewController.h"


@interface FirstViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *viewSub;
@property (strong, nonatomic) IBOutlet UITextField *tx;

@end
