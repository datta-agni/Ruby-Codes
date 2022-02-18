def day_week()
  days = gets.chomp().to_s
  day = ""
  case days
  when "sun"
    day = "Sunday"
  when "mon"
    day = "Monday"
  when "tues"
    day = "Tuesday"
  when "wed"
    day = "Wednesday"
  when "thurs"
    day = "Thursday"
  when "fri"
    day = "Friday"
  when "sat"
    day = "Saturday"
  else
    puts "invalid abbreviation"
  end

  return day
end

print day_week()
