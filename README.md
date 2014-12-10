Abstract Classes
====

You'll notice that this is not a true abstract class as defined in other languages. This is meant to give a simple implementation of an abstract class for those cases where an abstract type could come in handy.
An example of how to make an abstract class with objective-c.

-----------
BaseClass.h
-----------

@protocol BaseClassDelegate <NSObject>

@required
- (id)method1;
- (id)method2;

@optional
- (void)method3;
@end

@interface BaseClass : NSObject

@property (retain, nonatomic) id<BaseClassDelegate> delegate;

- (void)commonMethod;

@end

-----------
BaseClass.m
-----------

#import "BaseClass.h"

@implementation BaseClass

- (void)commonMethod {
    //Do the things
}

@end


------------
************
------------

-----------
Subclass1.h
-----------

#import "BaseClass.h"

@interface Subclass1 : BaseClass <BaseClassDelegate>

- (id)method1;
- (id)method2;

- (void)method3;

@end

-----------
Sublcass1.m
-----------

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


-----------
***********
-----------


-----------
Sublcass2.h
-----------

#import "BaseClass.h"

@interface Subclass2 : BaseClass <BaseClassDelegate>

- (id)method1;
- (id)method2;

@end

-----------
Subclass2.m
-----------

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


