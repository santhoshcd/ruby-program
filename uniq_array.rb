#Find the biggest number in the Array
module Program
    def self.uniq_array(arr)
        for i in 0..(arr.size-2)
            for j in (i+1)..(arr.size-1)
                if arr[i] === arr[j]
                    return false
                end
            end
        end
        return true
    end
end

puts "Enter Array Size"
n = gets.chomp.to_i
if (n>0)
    puts "Enter Array Elements"
    arr = []
    for i in 0..(n-1)
        arr[i] = gets.chomp.to_i
    end
    
    status = Program.uniq_array(arr)
    if status
        puts "Elements are in an array is Unique"
    else
        puts "Elements are in an array is not Unique"
    end
    
end    