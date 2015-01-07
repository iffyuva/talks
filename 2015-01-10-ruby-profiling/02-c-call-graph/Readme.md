compile with clang/gcc with flags -g

~~~
#!sh
run memcheck tool.
$ valgrind --tool=callgrind ./a.out
$ callgrind_annotate callgrind.out.<pid>

# annotate with source code
$ callgrind_annotate --auto=yes callgrind.out.<pid>

# add a call graph
$ callgrind_annotate --auto=yes --tree=both callgrind.out.<pid>
~~~
