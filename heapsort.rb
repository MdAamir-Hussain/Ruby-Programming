def heap_sort(array)
    n = array.length
  
    # Build a max heap
    (n / 2 - 1).downto(0) do |i|
      heapify(array, n, i)
    end
  
    # Extract elements from the heap one by one
    (n - 1).downto(1) do |i|
      # Swap the root (maximum value) of the heap with the last element
      array[0], array[i] = array[i], array[0]
      # Heapify the reduced heap
      heapify(array, i, 0)
    end
  
    array
  end
  
  # Function to heapify a subtree rooted with the node 'i' which is an index in 'array'
  def heapify(array, n, i)
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
  
    # If left child is larger than root
    if left < n && array[left] > array[largest]
      largest = left
    end
  
    # If right child is larger than largest so far
    if right < n && array[right] > array[largest]
      largest = right
    end
  
    # If largest is not root
    if largest != i
      array[i], array[largest] = array[largest], array[i] # Swap
      # Recursively heapify the affected sub-tree
      heapify(array, n, largest)
    end
  end
  
  # Example usage:
  arr = [12, 11, 13, 5, 6, 7]
  sorted_arr = heap_sort(arr)
  puts "Sorted array: #{sorted_arr}"
  