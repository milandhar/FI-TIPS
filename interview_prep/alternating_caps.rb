require 'byebug'

# https://edabit.com/challenge/7sruago8uF8DRR8FW
#
# Create a function that alternates the case of the letters in a string.
#
# Examples
# alternating_caps("Hello") ➞ "HeLlO"
#
# alternating_caps("How are you?") ➞ "HoW aRe YoU?"
#
# alternating_caps("OMG this website is awesome!") ➞ "OmG tHiS wEbSiTe Is AwEsOmE!"
# Notes
# The first letter should always be UPPERCASE.
# Ignore spaces.

def alternating_caps(str)
  i = 0
  cap = true
  while i < str.length
    if str[i] == " "
      i+=1
    end
    if cap
      str[i] = str[i].upcase
    else
      str[i] = str[i].downcase
    end
    cap = !cap
    i+=1
  end
  puts str
end

alternating_caps("OMG this website is awesome!")
