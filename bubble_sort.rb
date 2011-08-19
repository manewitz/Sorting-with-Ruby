#       Mike's Ruby Bubble Sort v1.0
#       Ruby implementation of a "Bubble Sort" algorithim

# Create array of random numbers array to sort
# "number" is the number of elements
# "range" is the range to pick from

def create_test_data(number, range)
  list = Array.new
  until list.length == number do
    list << rand(range)
  end
  list
end

class BubbleSorter < Object
  def bubble_sort(list)
    swaps = 0
    until @sorted == true
      for i in 0...(list.length - 1)
        if list[i] > list[i+1]
          list[i], list[i+1] = list[i+1], list[i]
          swaps += 1
        end
        i += 1
      end
      p list
    if swaps >= 1
        @sorted = false
      else
        @sorted = true
      end
      swaps = 0
    end
  end
end

list = create_test_data(25, 100)

puts "Unsorted List:"
p list

sorted = BubbleSorter.new
sorted.bubble_sort(list)

puts "Bubble Sorted List:"
p list