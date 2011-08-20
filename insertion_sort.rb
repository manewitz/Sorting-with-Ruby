require_relative 'create_test_data.rb'

class InsertionSort < Object
  def insertion_sort(list)
    i = (list.length - 1)

    until i == 1
      if list[i] < list[i-1]
        list[i], list[i-1] = list[i-1], list[i]
        i -= 1
      else
        i -= 1
      end
    end
    
    list
  end
end

list = create_test_data(20, 50)
puts
puts "Unsorted List:"
p list

sort = InsertionSort.new
sorted = sort.insertion_sort(list)

puts

puts"Insertion Sorted List:"
p sorted