import CHello

let cHello: UnsafePointer<Int8>? = chello()
let hello = String(cString: cHello!)
print(hello)
