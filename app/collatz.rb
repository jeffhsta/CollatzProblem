class Collatz

	def run(inital_number)
		if inital_number == nil
			return 0
		end

		loops = 1
		current_number = inital_number

		while current_number != 1 do
			if current_number % 2 == 0
				current_number /= 2
			else
				current_number = (3 * current_number) + 1
			end
			loops += 1
		end

		loops
	end
end