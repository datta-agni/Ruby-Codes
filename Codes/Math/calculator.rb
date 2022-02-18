# calculator for basic operation between two numbers

def calculator(inp = 0)

  # input two number a, b
  puts ("Enter first number: ")
  a = gets.chomp.to_f
  # for dual variable operations
  if (inp == 1 or inp == 2 or inp == 3 or inp == 4 or inp == 5 or inp == 6)
    puts ("Enter second number: ")
    b = gets.chomp.to_f
  end

  puts ("THE NUMBER YOU ENTERED: " + a.to_s)

  # for second value input
  if (inp == 1 or inp == 2 or inp == 3 or inp == 4 or inp == 5 or inp == 6)
    puts ("THE SECOND NUMBER YOU ENTERED: " + b.to_s)
  end

  puts (" ")

  # driver code
  if (inp == 1)
    # addition a + b
    print ("ADDITION: ")
    puts (a + b)
    puts ("")
  elsif (inp == 2)
    # subtraction a - b
    print ("SUBTRACTION: ")
    puts (a - b)
    puts ("")
  elsif (inp == 3)
    # multiplication a * b
    print ("MULTIPLICATION: ")
    puts (a * b)
    puts ("")
  elsif (inp == 4)
    # division a / b
    print ("DIVISION: ")
    puts (a / b)
    puts ("")
  elsif (inp == 5)
    # remainder a mod b
    print ("REMAINDER: ")
    puts (a % b)
    puts ("")
  elsif (inp == 6)
    # exponent a ^ b
    print ("EXPONENT: ")
    puts (a ** b)
    puts ("")
  elsif (inp == 7)
    # floor function
    print ("FLOOR: ")
    puts (a.floor())
    puts ("")
  elsif (inp == 8)
    # ceil function
    print ("CEIL: ")
    puts (a.ceil())
    puts ("")
  elsif (inp == 9)
    # square root function
    print ("SQUARE ROOT: ")
    puts (Math.sqrt(a))
    puts ("")
  elsif (inp == 10)
    # logarithmic functions
    print ("LOGARITHM: ")
    puts (Math.log(a))
    puts ("")
  else
    puts ("PLEASE ENTER A VALID OPTION")
  end
end

def user_choice()
  puts (" This is a calculator")
  puts (" Available operations in the calculator \n
          Press 1 for addition \n
          Press 2 for subtraction \n
          Press 3 for multiplication \n
          Press 4 for division \n
          Press 5 for remainder \n
          Press 6 for exponent \n
          Press 7 for floor \n
          Press 8 for ceiling \n
          Press 9 for square root \n
          Press 10 for logarithms")
  num = gets.chomp().to_i
  return num
end

def main()
  calculator(user_choice())
end

main()
