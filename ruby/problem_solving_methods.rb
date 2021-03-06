# #RELEASE 0
define method that takes two arguments, an array and integer
def array_search(arr, x)
  n = arr.length
  count = 0
  while count < n
    if arr[count] == x
      return count
      break
    else
      count += 1
    end
  end
  p arr
end
array = [1,3,4,2,5]
p array_search(array,4)


# #RELEASE 1
# #Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)

# #method takes one argument, how many times we want sequence to run

def fib_sequence(x)
  array = [0,1]
  index = 0
  # some loop
    while index < x
      new_number = array[index] + array[index + 1]
      index += 1
      # pushes items into array
      array << new_number
    end
     return array 
end
p fib_sequence(6)


# def fib_sequence(x)
#  fib_array = [0,1]
#  x.times do |i|
#    next_num = fib_array[i] + fib_array[i + 1]
#  end
#  p next_num
# end



#RELEASE 2

#Define bubble sort method that takes in an argument of an array. 
def bubble_sort(arr)
 n = arr.length

 loop do
 swapped = false

  (n-1).times do |index| 
   if arr[index] > arr[index + 1]
    # Swap the numbers!
     arr[index], arr[index + 1] = arr[index + 1], arr[index]
     swapped = true
   end
   end 
   # terminates the program if there is no more sorting
   break if not swapped
 end
   arr
end
p bubble_sort([1,3,4,2,5])

