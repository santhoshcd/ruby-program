#Sort the Array using Quick sort
module Program
    
    def self.partition(arr, low, high)
        pivot = arr[low]
        i = low
        j = high
        while(1)
            while(arr[i] < pivot && arr[i] != pivot)
                i += 1
            end
            
            while(arr[j] > pivot && arr[j] != pivot)
                j -= 1
            end
            
            if(i < j)
                arr[i], arr[j] = arr[j], arr[i]
            else
                return j
            end
        end
    end
    
    def self.quick_sort(arr, low, high)
       if(low < high)
            pivot = partition(arr, low, high)
            quick_sort(arr, low, pivot)
            quick_sort(arr, pivot+1, high)
        end
    end
    
    def self.sort(arr)
       quick_sort(arr, 0, arr.length - 1)
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
    Program.sort(arr)
    puts arr
end
