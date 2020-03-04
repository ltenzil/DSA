Person = Struct.new(:age, :name, :gender)

LogEntry = Struct.new(:status, :url, :time)
LogEntry.new(200, '/books', '18:04')


"One of the major benefits from using a struct over an array, or a hash, 
	is that you get to access the struct members using methods."
"And it follows value object"
"They won't enforce the correct number of arguments for the constructor!
Let me explain."
anonymous  = Person.new # name, age, gender all are set to nil

"OpenStruct is slow and you shouldn't use it on production apps
OpenStruct create objects
Struct create classes"

require "ostruct"
cat = OpenStruct.new(color: 'black') #> created object #<OpenStruct color="black">


module Enumerable
	def to_histogram
		inject(Hash.new(0)) { |h, x| h[x] += 1; h}
	end
end

class Array
	def each_from_both_sides(&block)
		front_index = 0
		back_index = self.length-1
		while front_index <= back_index
			yield self[front_index]
			front_index += 1
			if front_index <= back_index
				yield self[back_index]
				back_index -= 1
			end
		end
	end
end
[1,2,3,4,5].each_from_both_sides {|x| puts x}
