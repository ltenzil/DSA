 # String operators for
	# concatenation (+), 
	# appends (<<), 
	# repetition (*), and 
	# indexing ([])

# class String

# end

s = "hello"
 # => "hello" 
s.concat(" world")
 # => "hello world" 
s[5]
 # => " " 
s[5] = " there" 
 # => " there" 
s
 # => "hello thereworld" 
s.slice(0)
 # => "h" 
s.slice(0,5)
 # => "hello" 
s.slice(5, 6)
 # => " there" 
s.slice!(5, 6)
 # => " there" 
s.eql?("hello world")
 # => false 
s.eql?("helloworld")
 # => true 
s.insert(5," there")
 # => "hello thereworld" 
s.slice!(5, 6)
 # => " there" 
s.eql?("helloworld")
 # => true 



# First Swapcase program

def swapcase(string)
 	new_string = ""
 	string.each_char do |value|
 		num = value.bytes[0]
  	value = if num >= 65 && num <= 90
      (value.bytes[0] + 32).chr #Lowercase
   	elsif num >= 97 && num <= 122
	    (value.bytes[0] - 32).chr #Uppercase
	  end
  	new_string.concat(value)
  end
  new_string
end

def downcase(string)
 	new_string = ""
 	string.each_char do |value|
 		num = value.bytes[0]
  	value = if num >= 65 && num <= 90
      (value.bytes[0] + 32).chr #Lowercase
	  end
  	new_string.concat(value)
  end
  new_string
end

def palindrome(value)
	value =  value.downcase
	reversed = ""
	count = value.length
		while count > 0
			count -= 1
			reversed.concat(value[count])
		end
  if value == reversed
		return "#{value} is a palindrom"
  else 
		'Not palindrome'
  end
end

def pyramid(height)
  height.times {|n|
    print ' ' * (height - n)
    puts '*' * (2 * n + 1)
  }
end
def flag(height)
  (1..height).each do |n| 
   puts '*' * (n)  
end
end

def invert_flag(height)
  height.times do |n| 
   puts '*' * (height - n)  
	end
end


# Creating arrays with the new() method
empty = Array.new # []: returns a new empty array
nils = Array.new(3) # [nil, nil, nil]: three nil elements
copy = Array.new(nils) # Make a new copy of an existing array
zeros = Array.new(4, 0) # [0, 0, 0, 0]: four 0 elements
count = Array.new(3){|i| i+1} # [1,2,3]: three elements computed by block
# Be careful with repeated objects
a=Array.new(3,'a') # => ['a','a','a']: three references to the same string
a[0].upcase! # Capitalize the first element of the array
a # => ['A','A','A']: they are all the same string!
a=Array.new(3){'b'} # => ['b','b','b']: three distinct string objects
a[0].upcase!; # Capitalize the first one
a # => ['B','b','b']: the others are still lowercase

# 9.5.2.6 Arrays as stacks and queues
# The push and pop add and remove elements from the end of an array. They allow you
# to use an array as a last-on-first-off stack:
a = []
a.push(1) # => [1]: a is now [1]
a.push(2,3) # => [1,2,3]: a is now [1,2,3]
a.pop # => 3: a is now [1,2]

a.pop # => 2: a is now [1]
a.pop # => 1: a is now []
a.pop # => nil: a is still []
# shift is like pop, but it removes and returns the first element of an array instead of the
# last element. unshift is like push, but it adds elements at the beginning of the array
# instead of the end. You can use push and shift to implement a first-in-first-out queue:
a = []
a.push(1) # => [1]: a is [1]
a.push(2) # => [1,2]: a is [1,2]
a.shift # => 1: a is [2]
a.push(3) # => [2,3]: a is [2,3]
a.shift # => 2: a is [3]
a.shift # => 3: a is []
a.shift # => nil: a is []


# Hashes can be created with literals, the Hash.new method, or the [] operator of the
# Hash class itself:
{ :one => 1, :two => 2 } # Basic hash literal syntax
{ :one, 1, :two, 2 } # Same, with deprecated Ruby 1.8 syntax
{ one: 1, two: 2 } # Same, Ruby 1.9 syntax. Keys are symbols.
{} # A new, empty, Hash object
Hash.new # => {}: creates empty hash
Hash[:one, 1, :two, 2] # => {one:1, two:2}

# Associate a value with a key in a hash with the []= operator or its synonym, the store
# method:
h = {} # Start with an empty hash
h[:a] = 1 # Map :a=>1. h is now {:a=>1}
h.store(:b,2) # More verbose: h is now {:a=>1, :b=>2}
# To replace all the key/value pairs in a hash with copies of the pairs from another hash,
# use replace:
# Replace all of the pairs in h with those from another hash
h.replace({1=>:a, 2=>;b} # h is now equal to the argument hash

# String vs symbols

# symbols are indentifiers, immutable
# strings are mutable, we can ruby code even in it.



string_in = "aaaggbbbbc"
string_out = ""
while string_in.length > 0
  string_out << (string_in.count(string_in[0]).to_s + string_in[0])
  string_in.delete!(string_in[0])
end
puts string_out
# 3a2g4b1c

class String
  def word_count
  frequencies = Hash.new(0)
  downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
  return frequencies
  end
end


def wrapp(s, size=78)
  s.gsub(/(.{1,#{size}})(\s+|\Z)/, "\\1\n")
end