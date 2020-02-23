require "./lib/linked_list"

class Stack
	attr_accessor :head
	def initialize()
		@head = nil
	end

	def push(value)
		@head = Node.new(value, @head)
	end

	def pop
		@head = @head.next
	end
end

class Queuee 

	attr_accessor :head
	def initialize()
		@head = nil
	end

	def enqueue(value)
		if @head.nil? 
			@head = Node.new(value)
		else
			current = @head
			current = current.next until current.next.nil?
			current.next = Node.new(value)
		end
	end

	def dequeue
		@head = @head.next
	end

end