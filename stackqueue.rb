require_relative 'my_stack'

class StackQueue
    def initialize(*values)
       @top = MyStack.new
       @bottom = MyStack.new 
    end

    def size
        @top.size + @bottom.size
    end

    def empty?
        @top.empty? && @bottom.empty?
    end

    def enqueue(el)
        @top.push(el)
    end

    def dequeue
        queueify if @bottom.empty?
        @bottom.pop
    end

    private
    def queueify
        @bottom.push(@top.pop) until @top.empty?
    end

end


# top need to be an array of values
# bottom need to be the top.revese
# after an enqueue(push) will need to reset bottom to top
# after a dequeue(pop) from bottom set top equal to buttom