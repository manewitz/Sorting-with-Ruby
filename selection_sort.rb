#
#       Mike's Ruby Selection Sort v1.0
#       Ruby implementation of a selection sort algorithim
#       8/19/11
# 
# "A selection sort finds the minimum value, swaps it 
# with the value in the first position, and repeats
# these steps for the remainder of the list."

require_relative 'create_test_data.rb'


class SelectionSort < Object

  def selection_sort(list)
    sorted = Array.new
    min_index = list.find_index(list.min)
   
    list.size.times do
      # find the index of the smallest value
       min_index = list.find_index(list.min)
     # remove it by index from the array destructively
       smallest = list.slice!(min_index)
     # add it to the beginning of a new array
       sorted << smallest
     end
    return sorted
  end
end

# array of 20 values between 0 and 100
list = create_test_data(20, 100)

puts "Unsorted List:"
p list

puts

sort = SelectionSort.new
sorted = sort.selection_sort(list)

puts "Selection Sorted List:"
p sorted