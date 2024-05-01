class ArrayQueue
    def initialize
      @queue = []
    end
  
    def enqueue(element)
      @queue.push(element)
    end
  
    def dequeue
      @queue.shift
    end
  
    def peek
      @queue.first
    end
  
    def empty?
      @queue.empty?
    end
  
    def size
      @queue.size
    end
  end
  
  # Driver code
  array_queue = ArrayQueue.new
  array_queue.enqueue(1)
  array_queue.enqueue(2)
  array_queue.enqueue(3)
  puts "Queue size: #{array_queue.size}"
  puts "Front of the queue: #{array_queue.peek}"
  puts "Dequeued element: #{array_queue.dequeue}"
  puts "Queue size after dequeue: #{array_queue.size}"
  