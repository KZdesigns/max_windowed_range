require_relative 'my_stack'

class MinMaxStack
    def initialize
        @store = MyStack.new
    end

    def empty?
        @store.empty?
    end

    def size
        @store.size
    end


    def peek
        @store.peek[:value] unless empty?
    end

    def max
        @store.peek[:max] unless empty?
    end

    def min 
        @store.peek[:min] unless empty?
    end

    def pop
        @store.pop[:value] unless empty?
    end

    def push(val)
        @store.push({
            :max new_max(val),
            :min new_min(val)
            :value val
        })
    end

    def new_max(val)
        #set the max for the given position
        empty? ? val : [max, val].max
    end

    def new_min(val)
        #set the min for the given position
        empty? ? val : [min, val].min
    end
end

# array = [{max: 1, min: 1, value: 1},{max: 2, min: 1, value: 2}, {max: 3, min: 1, value: 3}, {max: 3, min: 0, value: 0}]


# need to create a hash map for each value storing the value, the current max, and the current min
# when pushing a new value into the stack record the current max, and min as well as the value