class Queue
    def initialize
      @queue = []
    end
  
    # Enqueue: Add an element to the end of the queue
    def enqueue(element)
      @queue.push(element)
    end
  
    # Dequeue: Remove and return the element from the front of the queue
    def dequeue
      @queue.shift
    end
  
    # Peek: Return the element at the front of the queue without removing it
    def peek
      @queue.first
    end
  
    # Check if the queue is empty
    def empty?
      @queue.empty?
    end
  
    # Get the size of the queue
    def size
      @queue.length
    end
  end
  
  # Example usage:
  queue = Queue.new
  queue.enqueue(1)
  queue.enqueue(2)
  queue.enqueue(3)
  
  puts "Queue size: #{queue.size}"
  puts "Front of the queue: #{queue.peek}"
  puts "Dequeued element: #{queue.dequeue}"
  
  puts "Queue size after dequeue: #{queue.size}"
  puts "Front of the queue after dequeue: #{queue.peek}"
  