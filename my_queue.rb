class MyQueue
    def initialize(*values)
      @store = values
    end

    def peek
        @store.first
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

    def enqueue(el)
        @store.push(el)
        el
    end

    def dequeue
        @store.shift
    end
  end
