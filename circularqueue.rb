class CircularQueue
    def initialize(max_size)
      @max_size = max_size
      @queue = Array.new(max_size)
      @front = 0
      @rear = -1
      @size = 0
    end
  
    # Enqueue: Add an element to the rear of the queue
    def enqueue(element)
      if full?
        puts "Queue is full. Cannot enqueue element."
      else
        @rear = (@rear + 1) % @max_size
        @queue[@rear] = element
        @size += 1
      end
    end
  
    # Dequeue: Remove and return the element from the front of the queue
    def dequeue
      if empty?
        puts "Queue is empty. Cannot dequeue element."
        return nil
      else
        element = @queue[@front]
        @queue[@front] = nil
        @front = (@front + 1) % @max_size
        @size -= 1
        return element
      end
    end
  
    # Peek: Return the element at the front of the queue without removing it
    def peek
      @queue[@front]
    end
  
    # Check if the queue is empty
    def empty?
      @size == 0
    end
  
    # Check if the queue is full
    def full?
      @size == @max_size
    end
  
    # Get the size of the queue
    def size
      @size
    end
  end
  
  # Example usage:
  cq = CircularQueue.new(5)
  cq.enqueue(1)
  cq.enqueue(2)
  cq.enqueue(3)
  cq.enqueue(4)
  cq.enqueue(5)
  
  puts "Queue size: #{cq.size}"
  puts "Front of the queue: #{cq.peek}"
  puts "Dequeued element: #{cq.dequeue}"
  puts "Queue size after dequeue: #{cq.size}"
  cq.enqueue(6)
  puts "Queue size after enqueue: #{cq.size}"
  