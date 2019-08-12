import Foo
import Bar

let hello = [
    Foo().hello(),
    Bar().world()
].joined(separator: "")
print(hello)
