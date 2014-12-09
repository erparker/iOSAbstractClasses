//
//  Subclass1.h
//  AbstractClasses
//
//  Created by Eric Parker on 12/9/14.
//  Copyright (c) 2014 testing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseClass.h"

@interface Subclass1 : BaseClass <BaseClassDelegate>

- (id)method1;
- (id)method2;

- (void)method3;

@end
