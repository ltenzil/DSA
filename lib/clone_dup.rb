class Klass
  attr_accessor :str
end

module Foo
  def foo; 'foo'; end
end

s1 = Klass.new #=> #
s1.extend(Foo) #=> #
s1.foo #=> "foo"

s2 = s1.clone #=> #
s2.foo #=> "foo"

s3 = s1.dup #=> #
s3.foo #=> NoMethodError: undefined method `foo' for #