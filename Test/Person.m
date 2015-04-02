//
//  Person.m
//  Test
//
//  Created by Nguyen Van Phi on 11/10/14.
//  Copyright (c) 2014 Nguyen Van Phi. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"";
        self.age = 0;
    }
    return self;
}
@end
