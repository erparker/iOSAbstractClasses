//
//  Subclass1.m
//  AbstractClasses
//
//  Created by Eric Parker on 12/9/14.
//  Copyright (c) 2014 testing. All rights reserved.
//

#import "Subclass1.h"

@implementation Subclass1

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

- (void)method3 {
    //Do the things
}

@end
