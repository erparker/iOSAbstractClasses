Abstract Classes
====
An example of how to make an abstract class with objective-c.

You'll notice that this is not a true abstract class as defined in other languages. For example, you could call ``` [[ alloc] init]``` on the base class if you really wanted to.

This is meant to give a simple implementation of an abstract class for those cases where an abstract type could come in handy. I did it this way because I wanted a couple UITableViewCell sublcasses that had some shared functionality, but were different enough to warrant their own sublcass. It ended up making my UITableView delegate methods much cleaner and easier to maintain.

The trick I really wanted to accomplish was calling a method on 2 different subclasses that both return the same type, but whose implementations are different.


BaseClass.h

```objective-c
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
```

BaseClass.m

```objective-c
#import "BaseClass.h"

@implementation BaseClass

- (void)commonMethod {
    //Do the things
}

@end
```

------------



Subclass1.h

```objective-c
#import "BaseClass.h"

@interface Subclass1 : BaseClass <BaseClassDelegate>

- (id)method1;
- (id)method2;

- (void)method3;

@end
```


Sublcass1.m

```objective-c
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
```

-----------




Sublcass2.h

```objective-c
#import "BaseClass.h"

@interface Subclass2 : BaseClass <BaseClassDelegate>

- (id)method1;
- (id)method2;

@end
```


Subclass2.m

```objective-c
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
```

