class Array


	# cards

	def insertion_sort(array)
	  (array.length).times do |j|
	    while j > 0
	      if array[j-1] > array[j]
	        array[j], array[j-1] = array[j-1], array[j]
	      else
	        break
	      end
	      j -= 1
	    end
	  end
	  array
	end

	# Coins

	def selection_sort(array)
	  n = array.length - 1
	  n.times do |i|
	    min_index = i
	    for j in (i + 1)..n
	      min_index = j if array[j] < array[min_index]
	    end
	    array[i], array[min_index] = array[min_index], array[i] if min_index != i
	  end
	  array
	end

	# Coins
		
	def bubble_sort(array)
	  return array if array.size <= 1
	  swap = true
	    while swap
	      swap = false
	      (array.length - 1).times do |x|
	        if array[x] > array[x+1]
	          array[x], array[x+1] = array[x+1], array[x]
	          swap = true
	        end
	      end
	    end
	  array
	end

	# For anything

	def quick_sort(array)
	  return array if array.length <= 1
	  pivot = array.delete_at(rand(array.length))

	  left = Array.new
	  right = Array.new

	  array.each do |x|
	    if x <= pivot
	      left << x
	    else
	      right << x
	    end
	  end
	  return *quick_sort(left), pivot ,*quick_sort(right)
	end

	# Merge Sort

	# Phone books and dictionary

	def merge_sort(array)
	  if array.length <= 1
	    array
	  else
	    mid = (array.length / 2).floor
	    left = merge_sort(array[0..mid-1])
	    right = merge_sort(array[mid..array.length])
	    merge(left, right)
	  end
	end

	def merge(left, right)
	  if left.empty?
	    right
	  elsif right.empty?
	    left
	  elsif left[0] < right[0]
	    [left[0]] + merge(left[1..left.length], right)
	  else
	    [right[0]] + merge(left, right[1..right.length])
	  end
	end

end