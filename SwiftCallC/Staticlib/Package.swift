// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Staticlib",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CHello",
            cSettings: [
                // -Xcc -ISources/libhello/include
                .unsafeFlags(["-I", "Sources/libhello/include"]),
            ],
            linkerSettings: [
                // -Xlinker -LSources/libhello/lib
				.unsafeFlags(["-L", "Sources/libhello/lib"]),
                // -Xlinker -lhello
                .linkedLibrary("hello")
            ]),
        .target(
            name: "Staticlib",
            dependencies: ["CHello"]),
        .testTarget(
            name: "StaticlibTests",
            dependencies: ["Staticlib"]),
    ]
)
