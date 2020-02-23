module Lt

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


class InHuman 
	include Lt # instance methods
	attr_accessor :name, :age, :legs
	def initialize(name, age, legs)
		@name = name
		@legs = legs
		@age = age
	end
end


class ExAnimal
	extend Lt # CLASS Methods
	attr_accessor :name, :age, :legs
	def initialize(name, age, legs)
		@name = name
		@legs = legs
		@age = age
	end
end