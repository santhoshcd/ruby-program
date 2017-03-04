#Sort the Array using Selection sort
module Program
    def self.selection_sort(arr)
        n = arr.size
        for i in 0...(n-1)
            pos = i
            for j in (i+1)...(n-1)
                if(arr[j] < arr[pos])
                   arr[pos] = arr[j]
                end
            end
             arr[i], arr[pos] = arr[pos], arr[i]
        end
        return arr
    end
end

puts "Enter Array Size"
n = gets.chomp.to_i
if (n>0)
    puts "Enter Array Elements"
    arr = []
    for i in 0...n
        arr[i] = gets.chomp.to_i
    end

    puts "Sorted Array : "
    puts Program.selection_sort(arr)
    
end    