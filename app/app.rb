require File.dirname(__FILE__) + "/collatz.rb"

class App

	def initialize
		@most_itearions = nil
		puts self.discovery_bigger_iteration
	end

	def discovery_bigger_iteration
		collatz = Collatz.new

		for current_iteration in 1..1000000
			iterations = collatz.run current_iteration
			if @most_itearions == nil || iterations > @most_itearions
				@most_itearions = iterations
			end
		end

		@most_itearions
	end
end

app = App.new
