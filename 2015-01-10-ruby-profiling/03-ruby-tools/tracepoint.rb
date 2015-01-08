TracePoint.trace do |tracer|
  p "#{tracer.lineno} : #{tracer.event}"
end


class Foo
  def hello
    'world'
  end
end

Foo.new.hello
