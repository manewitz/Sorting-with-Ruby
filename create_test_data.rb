# creates an Array of n numbers between 0 and r
def create_test_data(n, r)
  list = Array.new
  until list.length == n do
    list << rand(r)
  end
  list
end