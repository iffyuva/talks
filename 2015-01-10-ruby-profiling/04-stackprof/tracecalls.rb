require 'stackprof'

class Foo
  def hello
    'world'
  end

  def foo
    'bar'
  end
end


StackProf.run(mode: :object, out: '/tmp/stackprof.dump') do
  100000.times do
    Foo.new.hello
    Foo.new.bar
  end
end
