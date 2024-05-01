class Node
    attr_accessor :data, :next_node
  
    def initialize(data)
      @data = data
      @next_node = nil
    end
  end
  
  class CircularSinglyLinkedList
    def initialize
      @head = nil
    end
  
    def insert_last(data)
      new_node = Node.new(data)
      if @head.nil?
        @head = new_node
        new_node.next_node = @head
      else
        current = @head
        while current.next_node != @head
          current = current.next_node
        end
        current.next_node = new_node
        new_node.next_node = @head
      end
    end
  
    def display
      current = @head
      loop do
        print "#{current.data} -> "
        current = current.next_node
        break if current == @head
      end
      puts "nil"
    end
  end
  
  # Driver code
  circular_singly_linked_list = CircularSinglyLinkedList.new
  circular_singly_linked_list.insert_last(1)
  circular_singly_linked_list.insert_last(2)
  circular_singly_linked_list.insert_last(3)
  circular_singly_linked_list.display # Output: 1 -> 2 -> 3 -> nil
  