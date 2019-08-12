import CHello

let cHello: UnsafePointer<Int8>? = hello()
let hello = String(cString: cHello!)
print(hello)
