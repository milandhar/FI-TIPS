require 'pry'

def palindrome?(string)
  reversed_string = string.downcase.reverse
  #binding.pry
  if string.downcase == reversed_string
     true
  else
     false
  end

end

puts "#{palindrome?("tacocat")}"

# def palindrome2?(string)
#   array = string.split
#   is_palindrome = true
#
#   do |index|
#     if array[index] != array[index-1]
#       #err
#       is_palindrome = false
#     end
#   end
# end


def palindrome3?(string)
  str = string.to_s.downcase
  x = 0
  y = str.length - 1

  while x < y
    if str[x] != str[y]
      return false
    end
      x+=1
      y-=1
  end
  true
end
binding.pry
