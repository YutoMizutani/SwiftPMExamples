import CppHello

let cppHello: UnsafePointer<Int8>? = hello()
let hello = String(cString: cppHello!)
print(hello)
