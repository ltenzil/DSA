class PrintMiddleware

	def initialize(app)
		@app = app

	end

	def call(env)
		status, headers, body = @app.call(env)
		[status, headers, body << "Fetched by ten"]
	end

end