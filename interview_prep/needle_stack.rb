# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    #0 find length of needle
    #1 set output to -1
    #2 if needle is empty --> return 0
    #3 loop thru haystack chars
    #4 check if the substring is equal to the needle

    needle_length = needle.length
    if needle_length == 0
       return 0
    end

    (haystack.length-needle_length+1).times do |i|
      # p haystack[i..(i+needle_length - 1)]
       if haystack[i..(i+needle_length - 1)] == needle
         return i
       end
    end
    return -1
end

p str_str("hello", "ll")
p str_str("amanda", "adsfasdfasdf")
