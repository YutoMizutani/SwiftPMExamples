#include <string>
#import "include/hello.h"

std::string cppHello() {
    return "Hello, world!";
}

const char* hello() {
    return strdup(cppHello().c_str());
}
