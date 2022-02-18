def even_odd_check(num = 0)
  if (num % 2 == 0)
    return true
  else
    return false
  end
end

# input from user
def main()
  puts "ENTER ANY NUMBER"
  number = gets.chomp().to_f

  if (even_odd_check(number) == true)
    puts "The number is even."
  else
    puts "The number is odd."
  end
end

main()
