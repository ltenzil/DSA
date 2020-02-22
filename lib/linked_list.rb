require "./lib/node"

class LinkedList
	attr_accessor :head

	def initialize
		@head = nil
		# @tail = nil
	end

	def insert(value)
		new_node = Node.new(value)
		return (@head = new_node) if @head.nil?
		current = @head
		current = current.next until current.next.nil?
		current.next = new_node
	end


	def search(value)
		return "List not found" if @head.nil?
		return "Value required" if value.nil?

		current = @head
		while current.is_a?(Node) && current.value != value
			current = current.next
		end
		return current if current.is_a?(Node) && current.value == value
		"Record Not Found"
	end

	def add_nodes_at(index, value)
		if @head.nil? 
      @head = Node.new(value)
    end
    if index.zero? 
      @head = Node.new(value, @head)
    else
    	this_node = Node.new(value)
      before_node = get_node_by_index(index - 1)
      return insert(value) if before_node.nil?
      after_node 	= get_node_by_index(index + 1)
      before_node.next = this_node
      this_node.next = after_node
    end
	end

	def delete_nodes_at(index)
		return "No Records" if @head.nil?
		return (@head = @head.next) if index.zero?
		node = get_node_by_index(index)
		return "Record Not Found" if node.nil?
		before_node = get_node_by_index(index - 1)
		after_node  = node.next
		before_node.next = after_node
		node
	end

	def get_node_by_index(index)
    current = @head
    index.times do
      current = current&.next
    end
    return current
  end

  def reverse
  	return "No Records" if @head.nil?
  	current = @head
	  previous = nil

	  while current
	    next_node = current.next
	    current.next = previous
	    previous = current
	    current = next_node
	  end

	  @head = previous
  end
end