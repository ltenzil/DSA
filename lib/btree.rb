class Node 
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value=nil)
	  @value = value
	  left = nil;
	  right = nil;
  end
end

class Btree

	attr_accessor :root_node

	def initialize(root_value=nil)
		@root_node = Node.new(root_value)
	end

	def insert(value)
		return node = Node.new(value) if node.nil?
		if node.value == value
			return node 
		elsif value < node.value
			insert(node.left, value)
		elsif value > node.value
			insert(node.right, value)
		end
	end

	def self.create_binary_search_tree(size)
		array_of_nums = (0..size).to_a.shuffle
		new_tree = Btree.new(size)
		array_of_nums.each do |num|
			new_tree.insert( num)
		end
		return new_tree
	end


	def self.bfs(value, new_tree)
		if value == node.value 
  		return node
  	elsif value > node.value
  		search(value, node.right)
  	else value < node.value
  		search(value, node.left) 		
  	end
	end

	def self.obfs(search_value, tree)
	  queue = [tree]
	  visited = [tree]

	  while !queue.empty?
	    current = queue.shift
	    visited << current
	    left, right = current.left, current.right

	    if current.value == search_value
	      puts current
	      exit
	    end

	    if !left.nil? && !visited.include?(left)
	      if left.value == search_value
	        puts left
	        exit
	      else
	        visited << left
	        queue << left
	      end
	    end

	    if !right.nil? && !visited.include?(right)
	      if right.value == search_value
	        puts right
	        exit
	      else
	        visited << right
	        queue << right
	      end
	    end
	  end
	  puts "nil"
	end
end