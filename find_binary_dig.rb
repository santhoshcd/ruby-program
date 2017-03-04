#Count binary digit in number
module Program
    def self.binary_dig(n)
        return 1 if (n<2)
        return 1 + binary_dig(n/2)
    end
end

puts "Enter a Number"
n = gets.chomp.to_i
puts "Factorial of #{n} is :#{Program.binary_dig(n)}"
