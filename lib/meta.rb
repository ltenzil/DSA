def add_method(c, m, &b)
	c.class_eval {
		define_method(m, &b)
	}
end
add_method(String, :greet) { "Hello, " + self }

"world".greet # => "Hello, world"


def add_class_method(c, m, &b)
	eigenclass = class << c; self; end
	eigenclass.class_eval {
		define_method(m, &b)
	}
end
add_class_method(String, :greet) {|name| "Hello, " + name }
String.greet("world")
# => "Hello, world"