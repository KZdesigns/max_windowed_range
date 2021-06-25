class MyStack
    def initialize(store = [])
      @store = store
    end

    def peek
        @store.last
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def pop
        @store.pop
    end

    def push(el)
        @store.push(el)
    end
  end

#   my_stack = MyStack.new(1,2,3,4)

#   p my_stack.peek
#   p my_stack.size
#   p my_stack.empty?
#   p my_stack.pop
#   p my_stack.push(5)