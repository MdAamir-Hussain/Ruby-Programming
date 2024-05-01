class Node
    attr_accessor :data, :next_node, :prev_node
  
    def initialize(data)
      @data = data
      @next_node = nil
      @prev_node = nil
    end
  end
  
  class CircularDoublyLinkedList
    def initialize
      @head = nil
    end
  
    def insert_last(data)
      new_node = Node.new(data)
      if @head.nil?
        @head = new_node
        new_node.next_node = @head
        new_node.prev_node = @head
      else
        current = @head
        while current.next_node != @head
          current = current.next_node
        end
        current.next_node = new_node
        new_node.prev_node = current
        new_node.next_node = @head
        @head.prev_node = new_node
      end
    end
  
    def display
      current = @head
      loop do
        print "#{current.data} <-> "
        current = current.next_node
        break if current == @head
      end
      puts "nil"
    end
  end
  
  # Driver code
  circular_doubly_linked_list = CircularDoublyLinkedList.new
  circular_doubly_linked_list.insert_last(1)
  circular_doubly_linked_list.insert_last(2)
  circular_doubly_linked_list.insert_last(3)
  circular_doubly_linked_list.display # Output: 1 <-> 2 <-> 3 <-> nil
  