class CircularQueue
    def initialize(max_size)
      @max_size = max_size
      @queue = Array.new(max_size)
      @front = 0
      @rear = -1
      @size = 0
    end
  
    def enqueue(element)
      if full?
        puts "Queue is full. Cannot enqueue element."
      else
        @rear = (@rear + 1) % @max_size
        @queue[@rear] = element
        @size += 1
      end
    end
  
    def dequeue
      if empty?
        puts "Queue is empty. Cannot dequeue element."
        return nil
      else
        dequeued = @queue[@front]
        @queue[@front] = nil
        @front = (@front + 1) % @max_size
        @size -= 1
        return dequeued
      end
    end
  
    def peek
      @queue[@front]
    end
  
    def empty?
      @size == 0
    end
  
    def full?
      @size == @max_size
    end
  
    def size
      @size
    end
  end
  
  # Driver code
  circular_queue = CircularQueue.new(5)
  circular_queue.enqueue(1)
  circular_queue.enqueue(2)
  circular_queue.enqueue(3)
  puts "Queue size: #{circular_queue.size}"
  puts "Front of the queue: #{circular_queue.peek}"
  puts "Dequeued element: #{circular_queue.dequeue}"
  puts "Queue size after dequeue: #{circular_queue.size}"
  