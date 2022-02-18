# multiplication table of a number taken as input.
def multiplication(num)
  i = 1
  mul = 1
  while i <= 20
    mul = i * num
    puts (num.to_s + " " + "*" + " " + i.to_s + " " + "=" + " " + mul.to_s)
    i = i + 1
  end
end

def main()
  # user input
  puts "Enter a number whose multiplication table is to be printed"
  number = gets.chomp().to_i

  multiplication (number)
end

main()
