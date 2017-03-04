#Sort the Array using Bubble sort
module Program
    def self.bubble_sort(arr)
        n = arr.size
        for i in 1...n
            flag = true
            for j in 0...(n-i)
                if(arr[j] > arr[j+1])
                    arr[j], arr[j+1] = arr[j+1], arr[j]
                    flag = false
                end
            end
            break if flag
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
    puts Program.bubble_sort(arr)
    
end    