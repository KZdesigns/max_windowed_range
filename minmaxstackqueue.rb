require_relative 'minmaxstack'

class MinMaxStackQueue
    def initialize
        @top = MinMaxStack.new
        @bottom = MinMaxStack.new 
    end

    def size
        @top.size + @bottom.size
    end

    def empty?
        @top.empty? && @bottom.empty?
    end

    def max
        maxes = []
        maxes << @top.max unless @top.empty?
        maxes << @bottom.max unless @bottom.empty?
        maxes.max
    end

    def min
        mins = []
        mins << @top.min unless @top.empty?
        mins << @bottom.min unless @bottom.empty?
        mins.min
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


queue = MinMaxStackQueue.new

queue.enqueue(5)
queue.enqueue(7)
queue.enqueue(1)
queue.dequeue


