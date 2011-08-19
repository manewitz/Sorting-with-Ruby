
def swap(a, b)
  array = Array.new
  array[0], array[1] = array[1], array[0]
  array
end


a = 1
b = 2
puts a
puts b
swap(a, b)
puts a
puts b
puts
puts array