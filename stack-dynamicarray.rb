class DynamicArrayStack
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
  
    def auto_resize
      if @stack.size == @stack.capacity
        new_capacity = @stack.capacity * 2
        @stack = @stack + Array.new(new_capacity - @stack.capacity)
      elsif @stack.size <= @stack.capacity / 4
        new_capacity = @stack.capacity / 2
        @stack = @stack.take(new_capacity)
      end
    end
  end
  
  # Driver code
  dynamic_array_stack = DynamicArrayStack.new
  dynamic_array_stack.push(1)
  dynamic_array_stack.push(2)
  dynamic_array_stack.push(3)
  puts "Stack size: #{dynamic_array_stack.size}"
  puts "Top of the stack: #{dynamic_array_stack.peek}"
  puts "Popped element: #{dynamic_array_stack.pop}"
  puts "Stack size after pop: #{dynamic_array_stack.size}"
  