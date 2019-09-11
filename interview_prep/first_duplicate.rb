# Find the first duplicate in an array.

def first_duplicate(arr)
  arr.length.times do |i|
    if arr[i] == arr[i+1]
      return arr[i]
    end
  end
  return "no duplicates"
end

p first_duplicate([5, 2, 3, 2, -1])
