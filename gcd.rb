# GCD of M and N
# Algorithm
=begin
	GCD(M, N) = M if n = 0
	GCD(M, N)= GCD(N, M%N) 
=end
module Program
	class InvalidInput < StandardError
	end

	def self.find_gcd(m, n)
		return m if n == 0
		find_gcd(n, m%n)
	end

	def self.gcd(m, n)
		raise InvalidInput.new("Numbers should be positive") if (m <= 0 || n <= 0 )
		find_gcd(m, n)
	end
end

puts "Enter M and N"
puts "Enter M"
m = gets.chomp.to_i 
puts "Enter N"
n = gets.chomp.to_i 


puts "GCD(#{m}, #{n}) = #{Program.gcd(m, n)}"
