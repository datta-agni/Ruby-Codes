# program to find the prime numbers
def prime_num(number = 1)
  count = 0
  n = 2

  while (n < number)
    return false if number % n == 0
    n += 1
  end

  true
end

def main()
  puts "Enter a number to check wether it is prime or not"
  number = gets.chomp().to_i
  if prime_num(number)
    puts "The number " + number.to_s + " is prime."
  else
    puts "The number " + number.to_s + " is not prime."
  end
end

main()
