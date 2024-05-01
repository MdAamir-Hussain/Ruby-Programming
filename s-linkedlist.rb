class Node
    attr_accessor :data, :next_node
  
    def initialize(data)
      @data = data
      @next_node = nil
    end
  end
  
  class SinglyLinkedList
    def initialize
      @head = nil
    end
  
    def insert_first(data)
      new_node = Node.new(data)
      new_node.next_node = @head
      @head = new_node
    end
  
    def display
      current = @head
      while current
        print "#{current.data} -> "
        current = current.next_node
      end
      puts "nil"
    end
  end
  
  # Driver code
  singly_linked_list = SinglyLinkedList.new
  singly_linked_list.insert_first(1)
  singly_linked_list.insert_first(2)
  singly_linked_list.insert_first(3)
  singly_linked_list.display # Output: 3 -> 2 -> 1 -> nil
  