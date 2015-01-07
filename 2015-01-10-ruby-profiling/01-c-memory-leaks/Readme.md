compile with clang/gcc.

~~~
#!sh
run memcheck tool.
$ valgrind --tool=memcheck ./a.out
~~~


~~~
#!sh
run memcheck tool.
$ valgrind --tool=memcheck --leak-check=full ./a.out
~~~


~~~
#!sh
run memcheck tool.
$ valgrind --tool=memcheck --leak-check=full --show-leak-kinds=definite ./a.out
~~~
