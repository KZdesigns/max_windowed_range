require_relative 'my_stack'

class MinMaxStack
    def initialize
        @store = MyStack.new
    end

    def peek
        @store.peek[:value] unless empty?
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def max
        @store.peek[:max] unless empty?
    end

    def min
        @store.peek[:min] unless empty?
    end

    def  pop
        @store.pop
    end

    def push(val)
        @store.push({
            max: max_value(val),
            min: min_value(val),
            value: val
        })
    end

    private 

    def max_value(val)
        empty? ? val : [max, val].max
    end

    def min_value(val)
        empty? ? val : [min, val].min
    end
end


#each value in the stack needs to be a hash containing 3 items ex. [{max: 1, min: 1, value: 1}]
# stack = MinMaxStack.new
# p stack.empty? #=> true
# p stack.push(5) #stack = [{max: 5, min: 5, value: 5}]
# p stack.push(3) #stack = [{max: 5, min: 5, value: 5},{max: 5, min: 3, value: 3}]
# p stack.size #=> 2
# p stack.pop #=> {max: 5, min: 3, value: 3}
# p stack.size #=> 1
# p stack.push(10) #stack = [{max: 5, min: 5, value: 5},{max: 10, min: 5, value: 10}]
# p stack.min #=> 5
# p stack.max #=> 10
# p stack.pop
# p stack.pop
# p stack.empty? #=> true