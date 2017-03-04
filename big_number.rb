#Find the biggest number in the Array
module Program
    def self.find_big_number(arr)
        big = arr[0]    
        for i in 1...arr.size
            if arr[i] > big
                big = arr[i]
            end
        end
        return big
    end
end

puts "Enter Array Size"
n = gets.chomp.to_i
if (n>0)
    puts "Enter Array Elements"
    arr = []
    big = 0
    for i in 0...n
        arr[i] = gets.chomp.to_i
    end
    puts "Biggest number in the Array is #{Program.find_big_number(arr)}"
end    