# a selection sort finds the minimum value, swaps it with the value in the first position, 
# and repeats these steps for the remainder of the list.

require_relative 'create_test_data.rb'

list = create_test_data(20, 100)

puts "Unsorted List:"
p list

puts

class SelectionSort < Object
  def selection_sort(list)
    i = 0
    length = list.size
    sorted = Array.new
    length.times do
      min_index = list.find_index(list.min)
      smallest = list.slice!(min_index)
    
      sorted << smallest
    end
    sorted
end
 
end

sort = SelectionSort.new
sorted = sort.selection_sort(list)
p sorted