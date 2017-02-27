module Program

	def self.factorial_trailing_zeroes(number)
	  	count = 0
	  	while number > 4
	  		number /= 5
	  		count += number
	  	end
	  	return count
	end
end

puts "Enter a number to find the number of trailing zeroes in its factorial"
n = gets.chomp.to_i
puts "Number of trailing zeroes in #{n} factorial is = #{Program.factorial_trailing_zeroes(n)}"
