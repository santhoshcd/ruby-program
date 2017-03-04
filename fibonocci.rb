#Fibonocci number
module Program
    def self.fibonocci(n)
        a = 0
        b = 1
        return 0 if (n == 0)        
        return 1 if (n == 1)
        for i in 1...n
            a, b = b, a+b
        end
        return b
    end
        
    def self.fibonocci_r(n)
        return 0 if (n == 0)        
        return 1 if (n == 1)
        return fibonocci_r(n - 1) + fibonocci_r(n - 2) 
    end
    
end

puts "Enter a Number"
n = gets.chomp.to_i
puts "Fibonocci(#{n}) value is :#{Program.fibonocci(n)}"
    