# program to find the permutation and combination of an system of objects

# factorial function to compute factorial
def factorial(number)
  fact = 1
  if number == 0 or number == 1
    return fact
  else
    for i in 1..number
      fact = fact * i
    end
    return fact
  end
end

# permutation function to compute permutation
def permutation(n, r)
  # check wether n is less than r and return error
  if n < r
    return "Error! Number of objects can not be greater than the selection of objects"
  else
    # nPr = n!/(n-r)!
    number = factorial(n) / factorial(n - r)
    return number
  end
end

# combination function to compute combination
def combination(n, r)
  # check wether n is less than r and return error
  if n < r
    return "Error! Number of objects can not be greater than the selection of objects"
  else
    # nCr = n!/r!(n-r)!
    number = factorial(n) / (factorial(r) * factorial(n - r))
    return number
  end
end

# main function
def main()
  puts "Press 1 for Finding Permutation\nor\nPress 2 for Finding Combination"
  input = gets.chomp().to_i
  puts "Enter n also known as the total number of objects"
  n = gets.chomp().to_i
  puts "Enter r also known as the selection of objects"
  r = gets.chomp().to_i
  # takes the user's choice to select wether to find permutation or combination
  case input
  when input = 1
    print "\e[2J\e[f"
    puts "Permutation #{n}P#{r} = " + permutation(n, r).to_s
  when input = 2
    print "\e[2J\e[f"
    puts "Permutation #{n}C#{r} = " + combination(n, r).to_s
  else
    puts "Enter 1 or 2 other inputs are not accepted!"
  end
end

main()
