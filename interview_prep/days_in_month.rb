require 'byebug'
# https://edabit.com/challenge/yhwrHqoHRqCWQXyCF
#
# Create a function that takes the month and year (as integers) and returns the number of days in that month.
#
# Examples
# day_amount(2, 2018) ➞ 28
#
# day_amount(3, 2011) ➞ 31
#
# day_amount(4, 654) ➞ 30
#
# day_amount(2, 2020) ➞ 29
#
# day_amount(2, 200) ➞ 28
#
# day_amount(2, 1000) ➞ 29


def day_amount(month, year)
  days = 0
  if month == 2
    if year % 100 == 0 && year % 400 != 0
      days = 28
    elsif year % 4 == 0
      days = 29
    else
      days = 28
    end
  elsif month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    days = 31
  else
    days = 30
  end
  puts days
end

day_amount(2, 2018)
