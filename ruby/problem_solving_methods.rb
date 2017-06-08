# Release 0: Write a method that takes an array 


def fib_array(x)
  array = [0,1]
  index = 0
  #some loop
    while index < x
    new_number = array[index] + array[index + 1]
    array << new_number
    index += 1
    end
end
p fib_array(6)