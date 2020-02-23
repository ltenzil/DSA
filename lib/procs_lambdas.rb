def print_once
  yield
end

print_once { puts "Block is being run" }

def print_twice
  yield
  yield
end
print_twice { puts "Hello" }

def one_two_three
  yield 1
  yield 2
  yield 3
end
one_two_three { |number| puts number * 10 }


def explicit_block(&block)
  block.call # same as yield
end
explicit_block { puts "Explicit block called" }

def do_something_with_block
  return "No block given" unless block_given?
  yield
end

do_something_with_block { puts "running block" 	}


# Lambda

my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===

times_two = ->(x) { x * 2 }
times_two.call(10)
# 20

# If you pass the wrong number of arguments to a lambda, 
#	it will raise an exception, just like a regular method.


# Procs

 my_proc = Proc.new { |x| puts x }
 => #<Proc:0x000055e038d303d8@(irb):36> 
2.6.3 :037 > my_proc.call(1,2)
1
 => nil 
2.6.3 :038 > my_proc.call(7,2)
7
 => nil 
2.6.3 :039 > my_proc.call("hi",2)
hi


# procs vs lambda


# lambda ->{}, lambda {} => more like methods, arguments matters, return like regular method
# Proc.new {}, proc will try to return from the current context.

# Closures
# When you create a Ruby proc, it captures the current execution scope with it.
# This concept, which is sometimes called closure, 
# means that a proc will carry with it values like local variables and methods from the context where it was defined.
# They don’t carry the actual values, but a reference to them, 
# so if the variables change after the proc is created, the proc will always have the latest version.

#  example

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count   = 1
my_proc = Proc.new { puts count }

p call_proc(my_proc) # What does this print?

# When you create a Binding object via the binding method, you are creating an ‘anchor’ to this point in the code.

def return_binding
  foo = 100
  binding
end
# Foo is available thanks to the binding,
# even though we are outside of the method
# where it was defined.
puts return_binding.class
puts return_binding.eval('foo')
# If you try to print foo directly you will get an error.
# The reason is that foo was never defined outside of the method.
puts foo

# include mixes in specified module methods as instance methods in the target class
# extend mixes in specified module methods as class methods in the target class
# Given the following class definitions:

module ReusableModule
  def module_method
    puts "Module Method: Hi there! I'm a module method"
  end
end

class ClassThatIncludes
  include ReusableModule
end
class ClassThatExtends
  extend ReusableModule
end
# Here’s how ClassThatIncludes behaves:

# A class method does not exist
ClassThatIncludes.module_method
# NoMethodError: undefined method `module_method' for ClassThatIncludes:Class

# A valid instance method exists
ClassThatIncludes.new.module_method
# Module Method: Hi there! I'm a module method
# => nil
# Here’s how ClassThatExtends behaves:

# A valid class method exists
ClassThatExtends.module_method
# Module Method: Hi there! I'm a module method
# => nil

# An instance method does not exist
ClassThatExtends.new.module_method
# NoMethodError: undefined method `module_method' for #<ClassThatExtends:0x007ffa1e0317e8>
# We should mention that object.extend ExampleModule makes ExampleModule methods available as singleton methods in the object.