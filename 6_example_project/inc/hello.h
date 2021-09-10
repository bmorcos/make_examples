#ifndef _INC_HELLO_H_
#define _INC_HELLO_H_

// Expose C function to C++
#ifdef __cplusplus
extern "C" {
#endif

void say_hello(const char* name);

#ifdef __cplusplus
};
#endif

#endif  // _INC_HELLO_H_
