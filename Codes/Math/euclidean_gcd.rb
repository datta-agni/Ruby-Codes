# greatest common divisor using euclid's algorithm

def euclidean_gcd(a, b)
  while b != 0
    t = b
    b = a % b
    a = t
  end
  a
end

# main function to take input and finds gcd of the inputs

def main()
  puts "Enter the two number whose GCD is to be found:"
  num1 = gets.chomp().to_i
  num2 = gets.chomp().to_i
  puts "GCD(#{num1}, #{num2}) = " + euclidean_gcd(num1, num2).to_s
end

main()
