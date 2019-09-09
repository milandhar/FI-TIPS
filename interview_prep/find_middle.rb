#Given 3 integers how do you find the middle number?

# ex input: a = 14 b = -5  c = 0

# def find_middle(a, b, c)
#
#    arr = [a, b, c]
#
#    sorted_array = arr.sort
#
#    sorted_array[1]
#
# end

def find_middle(a,b,c)
  # 1. declare variable middle
  # 2. loop through and check if middle is greater than one and less than the other

  middle = a

  if (b > a && b < c) || (b < a && b > cc)
    middle = b
  elsif (c > a && c < b) || (c < a && c > b)
    middle = c
  end

  middle

end

p find_middle(-22, 22, -20)
