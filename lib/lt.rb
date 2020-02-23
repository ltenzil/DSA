class LT

	attr_accessor :name, :age
	
	def initialize(name, age, legs)
		@name = name
		@age = age
	end

	
	def run
		"I am running"
	end

	def sleep
		"I am sleeping"
	end	

	def eat
		"I am eating"
	end

	def dream
		"I am dreaming"
	end

	def count_legs
		"I have #{@legs} legs"
	end

end


class Human < LT
	attr_accessor :legs
	def initialize(name, age, legs)
		super
		@legs = legs
	end


end

class Animal < LT
	attr_accessor :legs
	def initialize(name, age, legs)
		super
		@legs = legs
	end	
	
end