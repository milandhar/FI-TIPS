# Write a function that converts a string input of standard time to military time.

#input: "11:00AM"
#output: "1100"

#input: "9:15AM"
#output: "0915"

#input: "4:30PM"
#output: "1630"

#input: "12:20PM"
#output: "1220"


#1. check if input is "PM" or "AM"
#2. if AM, split the colon into two arrays
#2a. if under 10, add a "0" to first string
#2b. if first string is 10 or greater just remove the colon and keep everything

#3. if PM, split the colon into two arrays
#3a. add 12 to the fist string
#3b. if first string = 12 don't add 12

#4 join the two arrays!


def military(std)
  pm = false
  military = ""

  if std[std.length-2] == 'P'
    pm = true
  end

  std = std[0 .. (std.length-3)]
  std_array = std.split(":")

  if !pm
    if std_array[0].to_i < 10
      std_array[0] = '0' + std_array[0]
    elsif std_array[0].to_i == 12
      std_array[0] = '00'
    end
    military = std_array.join
  else
    if std_array[0].to_i < 12
      std_array[0] = (std_array[0].to_i + 12).to_s
    end
    military = std_array.join
  end
  military
end
p military("12:00PM")
