#Find the factorial of the number
module Program
    def self.factorial(n)
        return 1 if (n == 0)
        return n * factorial(n-1)
    end
end

puts "Enter a Number"
n = gets.chomp.to_i
puts "Factorial of #{n} is :#{Program.factorial(n)}"
