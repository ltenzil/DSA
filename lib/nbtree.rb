class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end


  def self.build_tree(array, *indices)
    array.sort.uniq!
    mid = (array.length-1)/2
    first_element = indices[0]
    last_element = indices[1]

    if !first_element.nil? && first_element >last_element
      return nil 
    end

    root = Node.new(array[mid])
    root.left = build_tree(array[0..mid-1], 0, mid-1)
    root.right = build_tree(array[mid+1..-1], mid+1, array.length-1)

    return root
  end


  def self.is_valid_node(node)
    current = node
    left, right = current.left, current.right
    return true if left.nil? && right.nil?
    min =  left.value 
    max =  right.value
    return true  if (min < current.value) &&  (current.value < max)
    false
  end


  def self.breadth_first_search(search_value, tree)
    queue = [tree]
    visited = [tree]

    while !queue.empty? 
      current = queue.shift
      visited << current
      left, right = current.left, current.right

      if current.value == search_value
        puts current
        break
      end

      if !left.nil? && !visited.include?(left)
        if left.value == search_value
          puts left
          break
        else
          visited << left
          queue << left
        end
      end

      if !right.nil? && !visited.include?(right)
        if right.value == search_value
          puts right
          break
        else
          visited << right
          queue << right
        end
      end
    end
  end

  def self.depth_first_search(search_value, tree)
    stack = [tree]
    visited = [tree]

    while !stack.empty?
      current = stack.last
      left, right = current.left, current.right

      if current.value == search_value
        puts current
        break
      elsif !left.nil? && !visited.include?(left)
        if left.value == search_value
          puts left
          break
        else
          visited << left
          stack << left
        end
      elsif !right.nil? && !visited.include?(right)
        if right.value == search_value
          puts right
          break
        else
          visited << right
          stack << right
        end
      else
        stack.pop
      end
    end
  end

end