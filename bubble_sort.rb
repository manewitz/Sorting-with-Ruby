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
#  return the result 
  list
end


list = create_test_data(20, 100)

puts "Unsorted List:"
p list
puts

n = 0
i = 0

# n elements performs the comparison n times
while n < list.size do
  # n elements results in n - 1 comparisons per run
  for i in 0...(list.size - 1)
    # if left side is bigger, swap them with parallel assignment
    if list[i] > list[i+1]
      list[i], list[i+1] = list[i+1], list[i]
    end
    i += 1
    # uncomment the following line to see each iteration
    # p list
  end
  n += 1
end

puts "Bubble Sorted List:"
p list
# Shazam!
