#Tower Of Hanoi
module Program
    def self.tower_of_hanoi(n, source, tmp, destination)
        if (n == 1)
            puts "Move #{n} from #{source} to #{destination}"
            return
        end
        tower_of_hanoi(n-1, source, destination, tmp)
        puts "Move #{n} from #{source} to #{destination}"
        tower_of_hanoi(n-1, tmp, source, destination)
    end
end

puts "Enter a Number"
n = gets.chomp.to_i
Program.tower_of_hanoi(n, "A","B","C")