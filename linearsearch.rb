def linear_search(array,target)
    #loop through each element of the arry
    array.each_with_index do |element, index|
        #if the current element matches the target, return its index
        return index if element == target
    end


    # if the target is not found , return nil
    return nil
end

#usage
arr = [3,1,4,1,5,9,2,6,5,3]
target = 5
result = linear_search(arr, target)
if result
    puts"#{target} found at index #{result}."
else
    puts "#{target} not found in the array."
end