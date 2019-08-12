#import <Foundation/NSObject.h>

@interface ObjcHello : NSObject {}

- (nonnull NSString *)hello;

@end

@implementation ObjcHello

- (nonnull NSString *)hello
{
    return @"Hello, world!";
}

@end
