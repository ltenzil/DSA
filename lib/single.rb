# A method given only to a single object is called a singleton method


# r, the class methods of a class are nothing more than
# singleton methods on the Class instance that represents that class.
class Single

	def self.ton
		"I am a singleton method"
	end

end



# 7.8 Method Lookup
	# When Ruby evaluates a method invocation expression, it must first figure out which
	# method is to be invoked. The process for doing this is called method lookup or method
	# name resolution. For the method invocation expression o.m, Ruby performs name
	# resolution with the following steps:
		# 1. First, it checks the eigenclass of o for singleton methods named m.
		# 2. If no method m is found in the eigenclass, Ruby searches the class of o for an instance
		# method named m.
		# 3. If no method m is found in the class, Ruby searches the instance methods of any
		# modules included by the class of o. If that class includes more than one module,
		# then they are searched in the reverse of the order in which they were included. That
		# is, the most recently included module is searched first.
		# 4. If no instance method m is found in the class of o or in its modules, then the search
		# moves up the inheritance hierarchy to the superclass. Steps 2 and 3 are repeated
		# for each class in the inheritance hierarchy until each ancestor class and its included
		# modules have been searched.
		# 5. If no method named m is found after completing the search, then a method named
			# method_missing is invoked instead. In order to find an appropriate definition of this
			# method, the name resolution algorithm starts over at step 1. The Kernel module
			# provides a default implementation of method_missing, so this second pass of name
			# resolution is guaranteed to succeed. The method_missing method is covered in more
			# detail in §8.4.5.
			# Let’s consider a concrete example of this algorithm. Suppose we have the following
			# code:
			# message = "hello"
			# message.world
			# We want to invoke a method named world on the String instance "hello". Name
			# resolution proceeds as follows:

				# 1. Check the eigenclass for singleton methods. There aren’t any in this case.
				# 2. Check the String class. There is no instance method named world.
				# 3. Check the Comparable and Enumerable modules of the String class for an instance
				# method named world. Neither module defines such a method.
				# 4. Check the superclass of String, which is Object. The Object class does not define
				# a method named world, either.
				# 5. Check the Kernel module included by Object. The world method is not found here
				# either, so we now switch to looking for a method named method_missing.
				# 6. Look for method_missing in each of the spots above (the eigenclass of the String
				# object, the String class, the Comparable and Enumerable modules, the Object class,
				# and the Kernel module). The first definition of method_missing we find is in the
				# Kernel module, so this is the method we invoke. What it does is raise an exception:
				# NoMethodError: undefined method `world' for "hello":String
				# This may seem like it requires Ruby to perform an exhaustive search every time it
				# invokes a method. In typical implementations, however, successful method lookups
				# will be cached so that subsequent lookups of the same name (with no intervening
				# method definitions) will be very quick.