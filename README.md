# SwiftPMExamples

Examples of [Swift Package Manager](https://github.com/apple/swift-package-manager)

## Use Clang

### [Simple](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftCallC/Simple)

Simple (automatically generated) modulemap

#### Targets

- Simple (Swift) - CHello
- CHello (Clang)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── CHello
│   │   └── include
│   └── Simple
└── Tests
    └── SimpleTests
```

</p>
</details>

### [Staticlib](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftCallC/Staticlib)

One of Clang package (`CHello`) linked another C static library (`libhello/lib/libhello.a`)

#### Targets

- Staticlib (Swift) - CHello
- CHello (Clang) - libhello (`libhello.a`)
- libhello (Clang)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── CHello
│   │   ├── include
│   │   └── src
│   ├── Staticlib
│   └── libhello
│       ├── bin
│       ├── example
│       ├── include
│       ├── lib
│       ├── src
│       └── tmp
└── Tests
    └── StaticlibTests
```

</p>
</details>

## Use Cpp

### [CLinkage](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftCallCpp/CLinkage)

Cpp called from extern linkage C header

#### Targets

- CLinkage (Swift) - CppHello
- CppHello (Cpp)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── CLinkage
│   └── CppHello
│       └── include
└── Tests
    └── CLinkageTests
```

</p>
</details>

## Use Objc

### [Simple](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftCallObjc/Simple)

#### Targets

- Simple (Swift) - ObjcHello
- ObjcHello (Objc)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── ObjcHello
│   │   └── include
│   └── Simple
└── Tests
    └── SimpleTests
```

</p>
</details>

## Swift only

### [GitHubLib](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftOnly/GitHubLib)

#### Targets

- GitHubLib (Swift) - PlayingCard
- PlayingCard (Swift) from [GitHub - apple/example-package-playingcard](https://github.com/apple/example-package-playingcard)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   └── GitHubLib
└── Tests
    └── GitHubLibTests
```

</p>
</details>

### [MultiLayer](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftOnly/MultiLayer)

#### Targets

- MultiLayer (Swift) - FooBar
- FooBar (Swift)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── FooBar
│   │   ├── Sources
│   │   │   ├── Bar
│   │   │   ├── Foo
│   │   │   └── FooBar
│   │   └── Tests
│   │       └── FooBarTests
│   └── MultiLayer
└── Tests
    └── MultiLayerTests
```

</p>
</details>

### [MultiModule](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftOnly/MultiModule)

#### Targets

- MultiModule (Swift) - Bar, Foo
- Bar (Swift)
- Foo (Swift)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   ├── Bar
│   ├── Foo
│   └── MultiModule
└── Tests
    └── MultiModuleTests
```

</p>
</details>

### [Simple](https://github.com/YutoMizutani/SwiftPMExamples/tree/master/SwiftOnly/Simple)

#### Targets

- Simple (Swift)

<details><summary>tree</summary>
<p>

```
.
├── Sources
│   └── Simple
└── Tests
    └── SimpleTests
```

</p>
</details>

## For Developers

### Test

```
$ make test
```

### Clean

```
$ make clean
```