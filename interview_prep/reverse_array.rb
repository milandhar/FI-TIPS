require 'byebug'
# 1. declare new array
# 2. loop - start from beginning
# 3. unshift each element into front of new array

def reverse_array(arr)
  new_arr = []
  arr.length.times do |i|
    new_arr = new_arr.unshift(arr[i])
  end
  new_arr
end

#without new array
#loop thru array
#swap the ith element with the length - 1 - ith element


def reverse_array(arr)
  i = 0
  while i < arr.length / 2
    curr = arr[i]
    last = arr[arr.length-1-i]
    arr[i] = last
    arr[arr.length-1-i] = curr
    i += 1
  end
  arr
end

# Reverse an array without using the reverse method, without using a second array,
# and without duplicating any of the values.  

p reverse_array([5, 9, 10, -1, 0, 3, 10])
