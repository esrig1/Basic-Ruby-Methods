=begin
    This is a document that contains basic ruby methods from The Odin
    Project. 

=end

def caesar_cipher(str = "", shift = 0)
    newString = ""
    str.each_char do |c|
        if (c.ord >= 65 && c.ord <= 90) 
            if(c.ord + (shift%26) > 90)
                c = 65 + (c.ord + (shift%26) - 91)
            else 
                c = c.ord + (shift%26)
            end
           
        elsif (c.ord >= 97 && c.ord <= 122)
            if(c.ord + (shift%26) > 122)
                c = 97 + (c.ord + (shift%26) - 123)
            else
                c = c.ord + (shift%26)
            end
        end
        newString += c.chr
    end

    return newString
end
puts "#{caesar_cipher("Ww Xx Yy Zz!!!!!", 3)}"

def bubble_sort(array = [])
    unsorted_indexes = array.length
     (array.length-1).times do |i|
        (unsorted_indexes-1).times do |j|
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
            end
            
        end
            unsorted_indexes-=1
     end
     return array
end

puts bubble_sort([4,3,78,2,0,2])
