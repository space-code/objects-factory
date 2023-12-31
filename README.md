<h1 align="center" style="margin-top: 0px;">objects-factory</h1>

<p align="center">
<a href="https://github.com/space-code/objects-factory/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/space-code/objects-factory?style=flat"></a> 
<a href="https://developer.apple.com/swift"><img alt="5.7" src="https://img.shields.io/badge/language-Swift5.7-orange.svg"/></a>
<a href="https://github.com/space-code/objects-factory"><img alt="CI" src="https://github.com/space-code/objects-factory/actions/workflows/ci.yml/badge.svg?branch=main"></a>
<a href="https://github.com/apple/swift-package-manager" alt="objects-factory on Swift Package Manager" title="objects-factory on Swift Package Manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" /></a>
<a href="https://codecov.io/gh/space-code/objects-factory"><img alt="CodeCov" src="https://codecov.io/gh/space-code/objects-factory/graph/badge.svg?token=NSI8N7Q9JB"></a>
</p>

## Description
`objects-factory` helps to create objects for unit tests that have a private initializer.

- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)
- [Communication](#communication)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## Usage

⚠️ It should only be used for testing purposes, like for unit-testing. ⚠️

It's important that the class you want to instantiate is a subclass of `NSObject`.

```swift
import ObjectsFactory

do {
    let session = try ObjectsFactory.create(UIScene.self)
    let _ = try ObjectsFactory.create(UIWindowScene.self, properties: ["session": session])
} catch {
    // Handle an error here
}
```

## Requirements
- iOS 13.0+
- Xcode 14.0
- Swift 5.7

## Installation
### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but `objects-factory` does support its use on supported platforms.

Once you have your Swift package set up, adding `objects-factory` as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/space-code/objects-factory.git", .upToNextMajor(from: "1.0.0"))
]
```

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Contributing
Bootstrapping development environment

```
make bootstrap
```

Please feel free to help out with this project! If you see something that could be made better or want a new feature, open up an issue or send a Pull Request!

## Author
Nikita Vasilev, nv3212@gmail.com

## License
objects-factory is available under the MIT license. See the LICENSE file for more info.
