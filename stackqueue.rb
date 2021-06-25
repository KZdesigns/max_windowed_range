require_relative 'my_stack'

class StackQueue
    def initialize(*values)
        @top = MyStack.new(values)
        @bottom = MyStack.new(values)
    end

    def size
        
    end

    def empty?
        
    end

    def enqueue(el)
      
    end

    def dequeue
      
    end
end


# top need to be an array of values
# bottom need to be the top.revese
# after an enqueue(push) will need to reset bottom to top
# after a dequeue(pop) from bottom set top equal to buttom