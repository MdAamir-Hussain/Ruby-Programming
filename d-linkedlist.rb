class Node
    attr_accessor :data, :next_node, :prev_node
  
    def initialize(data)
      @data = data
      @next_node = nil
      @prev_node = nil
    end
  end
  
  class DoublyLinkedList
    def initialize
      @head = nil
    end
  
    def insert_first(data)
      new_node = Node.new(data)
      new_node.next_node = @head
      if @head
        @head.prev_node = new_node
      end
      @head = new_node
    end
  
    def display
      current = @head
      while current
        print "#{current.data} <-> "
        current = current.next_node
      end
      puts "nil"
    end
  end
  
  # Driver code
  doubly_linked_list = DoublyLinkedList.new
  doubly_linked_list.insert_first(1)
  doubly_linked_list.insert_first(2)
  doubly_linked_list.insert_first(3)
  doubly_linked_list.display # Output: 3 <-> 2 <-> 1 <-> nil
  