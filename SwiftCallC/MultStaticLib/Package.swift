// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MultStaticLib",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CHelloWrapper",
            cSettings: [
                // -Xcc -ISources/libhellowrapper/include
                .unsafeFlags(["-I", "Sources/libhellowrapper/include"]),
            ],
            linkerSettings: [
                // -Xlinker -LSources/libhello/lib
                .unsafeFlags(["-L", "Sources/libhello/lib"]),
                // -Xlinker -lhello
                .linkedLibrary("hello"),
                // -Xlinker -LSources/libhellowrapper/lib
				.unsafeFlags(["-L", "Sources/libhellowrapper/lib"]),
                // -Xlinker -lhellowrapper
                .linkedLibrary("hellowrapper")
            ]),
        .target(
            name: "MultStaticLib",
            dependencies: ["CHelloWrapper"]),
        .testTarget(
            name: "MultStaticLibTests",
            dependencies: ["MultStaticLib"]),
    ]
)
