class MyStack
    def initialize(*values)
      @store = values
    end

    def peek
        @store.first
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def pop
        el = @store.pop
        el
    end

    def push(el)
        @store.push(el)
        @store
    end
  end

#   my_stack = MyStack.new(1,2,3,4)

#   p my_stack.peek
#   p my_stack.size
#   p my_stack.empty?
#   p my_stack.pop
#   p my_stack.push(5)