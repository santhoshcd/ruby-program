#Find the biggest number in the Array
module Program
    
    def self.linear_search(arr, key)
        for i in 1...arr.size
            if key === arr[i]
                return (i+1)
            end
        end
        return -1
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

    puts "Enter a key which you want find"
    key = gets.chomp.to_i
    position = Program.linear_search(arr, key)
    if position == -1
        puts "Key not found in an Array"
    else
        puts "Key found at position(#{position}) in an Array"
    end
    
end    