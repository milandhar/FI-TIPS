# Input : str = "212", c = '2', k = 1
# Output : 4
# Possible substrings are {"2", "21", "12", "2"}
# that contains 2 exactly 1 time.
require 'byebug'

def substr_count(str, c, k)
  sub_count = 0
  c_count = 0
  str.length.times do |i|
    j = 0
    window = ""
    while c_count < k
      if str[j] == c
        c_count += 1
      end
      j += 1
    end
    window = str[i..j]
    byebug
  end
end

substr_count("32552", '5', 2)
