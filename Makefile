

a:
	clang++ -g -O3 bf_compiler.cpp -std=c++17 -oa.out `llvm-config --cxxflags --ldflags --system-libs --libs all` 

a_improve:
	clang++ -g -O3 bf_compiler_improved.cpp -std=c++17  -oa_improve.out `llvm-config --cxxflags --ldflags --system-libs --libs all` 