class Foo
  def hello
    'world'
  end
end


100000.times do
  Foo.new.hello
end
