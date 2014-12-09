//
//  BaseClass.h
//  AbstractClasses
//
//  Created by Eric Parker on 12/9/14.
//  Copyright (c) 2014 testing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseClassDelegate <NSObject>

@required
- (id)method1;
- (id)method2;

@optional
- (void)method3;
@end

@interface BaseClass : NSObject

@property (retain, nonatomic) id<BaseClassDelegate> delegate;

@end
