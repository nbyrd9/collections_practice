require 'pry'

def sort_array_asc(array)
    array.sort do |a, b|
        if a == b
          0
        elsif a < b
          -1
        elsif a > b
          1
        end
    end
end 

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a > b
            -1
        elsif a < b
            1
        end
    end
end

def sort_array_char_count(array)
    array.sort{|a, b| a.length <=> b.length}
end    

def swap_elements(array)
    array[0], array[1] , array[2] = array[0],  array[2] , array[1]
end

def reverse_array(array)
    array = array.reverse{|a,b| b <=> a }
end

def kesha_maker(array)
   new_array = []
    array.each do |str| 
    str[2] = "$"
    new_array << str
    end
new_array
end

def find_a(array)
array.select do |str|
    str.start_with? "a"
    end
end

def sum_array(array)
    array.inject { |sum, num| sum + num }
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index == 1
            element
        else element [element.length] = "s"
            element
        end
    end
end