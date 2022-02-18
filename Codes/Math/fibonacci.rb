# Fibonacci Series till 10 terms: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

def fibonacci(count = 0)
  count <= 1 ? count : fibonacci(count - 1) + fibonacci(count - 2)
end

def main()
  puts "Enter the limit of the fibonacci series: "
  limit = gets.chomp().to_i
  puts limit.to_s + " fibonacci value is " + fibonacci(limit).to_s
end

main()
