//
//  Subclass2.m
//  AbstractClasses
//
//  Created by Eric Parker on 12/9/14.
//  Copyright (c) 2014 testing. All rights reserved.
//

#import "Subclass2.h"

@implementation Subclass2

- (id)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
    }
    return self;
}

- (id)method1 {
    return nil;
}

- (id)method2 {
    return nil;
}

@end
