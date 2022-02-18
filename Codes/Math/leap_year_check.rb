# leap year check
def leap_year(year = 0)
  if (year % 4 and ((year % 100) != 0 or (year % 400) == 0))
    return true
  else
    return false
  end
end

def main()
  # input from the user
  puts "Enter a year you want ot check for leap year"
  year = gets.chomp().to_i

  # print whether is is a leap year or not
  if leap_year == true
    puts year.to_s + " is a leap year."
  else
    puts year.to_s + " is not a leap year."
  end
end

main()
