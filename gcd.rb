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


puts "GCD(10, 35) = #{Program.gcd(10, 35)}"
