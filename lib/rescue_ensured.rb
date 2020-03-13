def rescued_ensured(error)
  puts "#{raise(error)}"
  puts "Divide by zero"
	rescue
  	puts "rescued"
	else
 		puts "else"
	ensure
  	puts "ensured"
end

rescued_ensured(StandardError)