module Program
	def self.prime(n)
		if n > 1
			for i in 2..Math.sqrt(n)
				if ((n % i) == 0)
					p i
					puts "#{n} is not a prime number"
					return
				end
			end
			puts "#{n} is a prime number"
		else
			puts "#{n} is not a prime number"
		end
	end
end

puts "Enter a number to check given number is prime or not"
n = gets.chomp.to_i
t1 = Time.now
puts "#{Program.prime(n)}"
puts Time.now - t1
