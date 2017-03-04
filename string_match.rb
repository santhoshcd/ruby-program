#String Match
module Program
    def self.string_match(text, pattern)
        n = text.size
        m = pattern.size
        for i in 0..(n-m)
            j = 0
            while(j<m && text[i+j]=== pattern[j])
                j += 1
            end
            return (i + 1) if j == m
        end
        return -1
    end
end

puts "Enter the Text"
text = gets.chomp.to_s
puts "Enter the pattern which you want to match"
pattern = gets.chomp.to_s
position = Program.string_match(text, pattern)

if position == -1
    puts "Pattern Not found"
else
    puts "Pattern found at #{position} position"
end    