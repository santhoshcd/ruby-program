#Sort the Array using Merge sort
module Program
    
    def self.simple_merge(arr, low, mid, high)
        i = low
        j = mid + 1
        k = low
        c = []
        while(i <= mid && j <= high)
            if(arr[i] < arr[j])
                c[k] = arr[i];
                i += 1
            else
                c[k] = arr[j];
                j += 1
            end
            k += 1
        end
        
        while(i <= mid)
                c[k] = arr[i];
                k += 1
                i += 1
        end
        
        while(j <= high)
            c[k] = arr[j];
            k += 1
            j += 1
        end
        
        for i in low..high
            arr[i] = c[i]
        end
    end
    
    def self.merge_sort(arr, low, high)
        if(low < high)
            mid = (low + high)/2
            merge_sort(arr, low, mid)
            merge_sort(arr, mid+1, high)
            simple_merge(arr, low, mid, high)
        end
    end
    
    def self.sort(arr)
        merge_sort(arr, 0, arr.length - 1)
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
