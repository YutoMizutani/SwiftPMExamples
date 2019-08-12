import Foo
import Bar

public struct FooBar {
    public init() {}

    public func hello() -> String {
        return [
            Foo().hello(),
            Bar().world()
        ].joined(separator: "")
    }
}
