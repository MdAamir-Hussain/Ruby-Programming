class Node
    attr_accessor :data, :next_node
  
    def initialize(data)
      @data = data
      @next_node = nil
    end
  end
  
  class LinkedListQueue
    def initialize
      @front = nil
      @rear = nil
    end
  
    def enqueue(element)
      new_node = Node.new(element)
      if empty?
        @front = new_node
        @rear = new_node
      else
        @rear.next_node = new_node
        @rear = new_node
      end
    end
  
    def dequeue
      return nil if empty?
      dequeued = @front.data
      @front = @front.next_node
      dequeued
    end
  
    def peek
      @front&.data
    end
  
    def empty?
      @front.nil?
    end
  
    def size
      count = 0
      current = @front
      while current
        count += 1
        current = current.next_node
      end
      count
    end
  end
  
  # Driver code
  linked_list_queue = LinkedListQueue.new
  linked_list_queue.enqueue(1)
  linked_list_queue.enqueue(2)
  linked_list_queue.enqueue(3)
  puts "Queue size: #{linked_list_queue.size}"
  puts "Front of the queue: #{linked_list_queue.peek}"
  puts "Dequeued element: #{linked_list_queue.dequeue}"
  puts "Queue size after dequeue: #{linked_list_queue.size}"
  