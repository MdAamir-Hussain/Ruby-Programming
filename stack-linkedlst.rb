class Node
    attr_accessor :data, :next_node
  
    def initialize(data)
      @data = data
      @next_node = nil
    end
  end
  
  class LinkedListStack
    def initialize
      @top = nil
    end
  
    def push(element)
      new_node = Node.new(element)
      new_node.next_node = @top
      @top = new_node
    end
  
    def pop
      return nil if empty?
      popped = @top.data
      @top = @top.next_node
      popped
    end
  
    def peek
      return nil if empty?
      @top.data
    end
  
    def empty?
      @top.nil?
    end
  
    def size
      count = 0
      current = @top
      while current
        count += 1
        current = current.next_node
      end
      count
    end
  end
  
  # Driver code
  linked_list_stack = LinkedListStack.new
  linked_list_stack.push(1)
  linked_list_stack.push(2)
  linked_list_stack.push(3)
  puts "Stack size: #{linked_list_stack.size}"
  puts "Top of the stack: #{linked_list_stack.peek}"
  puts "Popped element: #{linked_list_stack.pop}"
  puts "Stack size after pop: #{linked_list_stack.size}"
  