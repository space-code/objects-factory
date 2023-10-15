//
// objects-factory
// Copyright © 2023 Space Code. All rights reserved.
//

import ObjectsFactoryObjC

public typealias ObjectsFactory = ObjectsFactoryObjC.ObjectsFactory

public extension ObjectsFactory {
    static func create<T: AnyObject>(_ classType: T.Type, properties: [String: Any] = [:]) throws -> T {
        if let instance = ObjectsFactory.createInstance(classType, properties: properties) as? T {
            return instance
        }
        throw NSError(
            domain: "ObjectsFactory",
            code: 1,
            userInfo: [NSLocalizedDescriptionKey: "Cannot create an instance of \(classType)"]
        )
    }
}
