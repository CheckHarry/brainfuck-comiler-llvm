

a:
	clang++ -g -O3 a.cpp -std=c++17 -oa.out `llvm-config --cxxflags --ldflags --system-libs --libs all` 

a_improve:
	clang++ -g -O3 a_improve.cpp -std=c++17  -oa_improve.out `llvm-config --cxxflags --ldflags --system-libs --libs all` 