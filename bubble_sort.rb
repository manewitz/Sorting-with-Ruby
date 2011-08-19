#       Mike's Ruby Bubble Sort v1.1
#       Ruby implementation of a "Bubble Sort" algorithim



# creates an Array of n numbers between 0 and r
def create_test_data(n, r)
  list = Array.new
  until list.length == n do
    list << rand(r)
  end
  list
end

class BubbleSorter < Object
  def bubble_sort(list)
    swaps = 0
    # parse the list until it is sorted
    until @sorted == true
      # compare adjacent elements
      for i in 0...(list.length - 1)
        # if the first is greater than the second, swap them with parallel assignment
        if list[i] > list[i+1]
          list[i], list[i+1] = list[i+1], list[i]
          # increase the number of swaps performed in this run by 1
          swaps += 1
        end
        # compare the next 2 elements
        i += 1
      end
      
      # uncomment the following line to see each iteration:
      # p list
      
    # If any swaps took place during the last run, the list is not yet sorted
    if swaps > 0
        @sorted = false
      # no swaps? Everything is in order
      else
        @sorted = true
      end
      # reset swap count for each run
      swaps = 0
    end
  end
end

# creates an Array of 25 numbers between 0 and 100
list = create_test_data(25, 100)

puts "Unsorted List:"
p list
puts

sort = BubbleSorter.new
sort = sort.bubble_sort(list)

puts "Bubble Sorted List:"
p list