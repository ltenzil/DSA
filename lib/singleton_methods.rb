"It is also possible, however, to use the def statement to define a method on a single
specified object. Simply follow the def keyword with an expression that evaluates to
an object. This expression should be followed by a period and the name of the method
to be defined. 
The resulting method is known as a singleton method because it is
available only on a single object:
"


o = "message" # A string is an object
def o.printme # Define a singleton method for this object
	puts self
end
o.printme # Invoke the singleton


