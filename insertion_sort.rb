require_relative 'create_test_data.rb'

class InsertionSort < Object
  def insertion_sort(list)
    i = 0
    until i == list.length - 1 do
      # compare first two elements
      # if right is larger
      if list[i] <= list[i+1]
        # increment i
        i += 1 unless i == list.length
      # if left is larger
        else
        # swap values
          list[i], list[i+1] = list[i+1], list[i]
          j = i
        #use index of j for downward comparison starting at i, j = i
          # begin downward comparison
        # LOOP until list[j-1] <= list[j]
          until list[j-1] <= list[j] || j == 0 do 
            
            # compare values list[j] and list[j-1]
            # if left value is higher
            if list[j-1] > list[j]
              # swap values list[j-1] and list[j]
              list[j], list[j-1] = list[j-1], list[j]
            # decrement j unless j == 1
              j -= 1 unless j == 1
            end
          end
        end
      puts i.to_s + " " + j.to_s + list.to_s
    end
    list
  end
end










list = create_test_data(600, 10000)
puts

puts "Unsorted List:"
print "x x"
p list

sort = InsertionSort.new
sorted = sort.insertion_sort(list)

puts

puts"Insertion Sorted List:"
p sorted

if sorted == list.sort
  puts "Sort Successful!!"
else
  puts "Sort FAIL"
end