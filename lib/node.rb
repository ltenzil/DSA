class Node
	
	attr_accessor :value, :next

	def initialize(value, node=nil)
		@value = value
		@next = node
	end	

end