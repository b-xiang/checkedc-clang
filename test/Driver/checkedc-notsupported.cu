// Checked C extension is not supported for CUDA.   Make sure driver
// rejects the flag.
//
// RUN: %clang -fcheckedc-extension -nocudalib -nocudainc -fsyntax-only -c %s 2>&1 | FileCheck %s
// CHECK: warning: Checked C extension not supported with 'CUDA'; ignoring '-fcheckedc-extension'
//
// Have clang compile this file as a C file.
// RUN: %clang -c -fcheckedc-extension -x c %s
//
// Have clang-cl compile this file as a C file.
// RUN: %clang_cl -c -Xclang -fcheckedc-extension /TC %s

void f() {}


