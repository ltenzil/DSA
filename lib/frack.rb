
class Application 

	def call(env)
		status = 200
		headers = {
			"Content-Type" => "text/html" 
		}
		body	= ["Hello, My First Rack Application"]
		[status, headers, body]
	end

end
