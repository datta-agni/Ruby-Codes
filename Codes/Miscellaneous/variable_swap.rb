# swapping variables without a third variable
def two_var_swap(num1, num2)
  # driver code for swapping variables
  num1 = num1 + num2
  num2 = num1 - num2
  num1 = num1 - num2

  puts "Number 1 as output = " + num1.to_s
  puts "Number 2 as output = " + num2.to_s
end

# swapping variable with the help of a third variable
def three_var_swap(num1, num2)
  # driver code for swapping variables
  tmp = 0
  tmp = num1
  num1 = num2
  num2 = tmp

  puts "Number 1 as output = " + num1.to_s
  puts "Number 2 as output = " + num2.to_s
end

def main()
  # user input of two numbers
  puts "Enter first numbers: "
  a = gets.chomp().to_i
  puts "Enter the second number: "
  b = gets.chomp().to_i

  # print the user input
  puts "Number 1 as input = " + a.to_s
  puts "Number 2 as input = " + b.to_s

  # output of the variables
  two_var_swap(a, b)
  three_var_swap(a, b)
end

main()
