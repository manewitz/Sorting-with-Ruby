#
#       Mike's Ruby Selection Sort v1.0
#       Ruby implementation of a selection sort algorithim

# "A selection sort finds the minimum value, swaps it 
# with the value in the first position, and repeats
# these steps for the remainder of the list."

require_relative 'create_test_data.rb'


class SelectionSort < Object

  def selection_sort(list)
    sorted = Array.new
    min_index = list.find_index(list.min)

    list.size.times do
       min_index = list.find_index(list.min)
       smallest = list.slice!(min_index)
     
       sorted << smallest
     end
    return smallest
  end
end

list = create_test_data(20, 100)

puts "Unsorted List:"
p list
puts

sort = SelectionSort.new
sorted = sort.selection_sort(list)

p sorted