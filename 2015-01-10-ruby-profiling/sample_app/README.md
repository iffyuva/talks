### Stackprof

try running Stackprof with custom middleware, and show flamegraphs. once any collection
is done, then first thing to do is generate flamegraph:

~~~
#!sh
be stackprof --flamegraph <dump> > fg.js
~~~

and then hit url to view flamegraph. note that i have copied viewer.html and
flamegraph.js to public folder directly for convenience

~~~
#!sh
localhost:3000/viewer.html?data=fg.js
~~~
