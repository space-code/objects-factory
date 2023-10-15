//
// objects-factory
// Copyright © 2023 Space Code. All rights reserved.
//

import ObjectsFactory
import XCTest

final class ObjectsFactoryTests: XCTestCase {
    func testThatSceneFactoryCreatesANewWindowSceneInstance() throws {
        // when
        var resultError: Error?

        do {
            let session = try ObjectsFactory.create(UIScene.self)
            let _ = try ObjectsFactory.create(UIWindowScene.self, properties: ["session": session])
        } catch {
            resultError = error
        }

        // then
        XCTAssertNil(resultError)
    }

    func testThatSceneFactoryThrowsAnErrorWhenClassIsNotASubclassOfNSObject() throws {
        // when
        var resultError: Error?

        do {
            let _ = try ObjectsFactory.create(TestObject.self)
        } catch {
            resultError = error
        }

        // then
        XCTAssertNotNil(resultError)
    }
}

// MARK: Private

private extension ObjectsFactoryTests {
    class TestObject {}
}
