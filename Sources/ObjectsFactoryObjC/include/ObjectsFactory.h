//
// Flare
// Copyright © 2023 Space Code. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(ObjectsFactory)
@interface ObjectsFactory : NSObject
+(id)createInstance:(Class)class;
+(id)createInstance:(Class)class properties:(NSDictionary *)properties;
@end

NS_ASSUME_NONNULL_END
