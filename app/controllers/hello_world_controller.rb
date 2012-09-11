class HelloWorldController < ApplicationController
	def index
		hello
	end
	
	def hello
		render text: "Hello World!"
	end
end
