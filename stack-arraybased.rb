class ArrayStack
    def initialize
      @stack = []
    end
  
    def push(element)
      @stack.push(element)
    end
  
    def pop
      @stack.pop
    end
  
    def peek
      @stack.last
    end
  
    def empty?
      @stack.empty?
    end
  
    def size
      @stack.size
    end
  end
  
  # Driver code
  array_stack = ArrayStack.new
  array_stack.push(1)
  array_stack.push(2)
  array_stack.push(3)
  puts "Stack size: #{array_stack.size}"
  puts "Top of the stack: #{array_stack.peek}"
  puts "Popped element: #{array_stack.pop}"
  puts "Stack size after pop: #{array_stack.size}"
  