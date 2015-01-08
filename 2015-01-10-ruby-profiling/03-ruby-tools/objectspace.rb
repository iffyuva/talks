require 'objspace'

ObjectSpace.trace_object_allocations_start

class Foo
  def hello
    'world'
  end
end

foo = Foo.new

p ObjectSpace.dump(foo)
