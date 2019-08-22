require 'pry'
require 'byebug'

def move_to_end(arr, el)
  i = 0
  j = arr.length
	while i < j
		if arr[i] == el
			current_element = arr[i]
			arr.slice!(i)
			arr.push(current_element)
      i-=1
      j-=1
    end
    i+=1
	end
	print arr
end

move_to_end(["a", "a", "a", "b"], "a")
move_to_end(["x", "y", "y", "x"], "x")
