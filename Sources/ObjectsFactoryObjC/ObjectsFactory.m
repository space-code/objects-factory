//
// Flare
// Copyright © 2023 Space Code. All rights reserved.
//

#import "ObjectsFactory.h"

@implementation ObjectsFactory
+ (id)createInstance:(Class)class {
    return [[class alloc] init];
}

+(id)createInstance:(Class)class properties:(NSDictionary *)properties {
    if (![class isKindOfClass:[NSObject class]]) {
        return nil;
    }

    id object = [self createInstance:class];
    if ([object isKindOfClass:[NSObject class]]) {
        NSObject *nsObject = object;
        [properties enumerateKeysAndObjectsUsingBlock:^(id key, id valueObject, BOOL *stop) {
                [nsObject setValue:valueObject forKey :key];
        }];
    }

    return object;
}
@end
