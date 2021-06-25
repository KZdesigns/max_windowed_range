require 'byebug'

def windowed_max_range(array, window_size)
    current_max_range = 0
    (0...array.length).each do |i|
        end_point = i + window_size
        return current_max_range if end_point > array.length
        window = array[i..end_point - 1]
        max, min = window.sort[-1], window.sort[0]
        range = max - min
        current_max_range = range > current_max_range ? range : current_max_range
    end
end

p windowed_max_range([1, 2, 3, 5],3) #=> 3
p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #=> 4
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #=> 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #=> 6
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #=> 6


