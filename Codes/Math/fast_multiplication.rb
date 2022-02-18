# Given two numbers a and b, write a fast method to multiply both of them.
# Algorithm: Russian Peasant
=begin
1. Initialize ans=0
2. if b is odd ,add a to ans
3. double a,half b
4. repeat steps 2 and 3 until b>0
=end

#Using arithmetic operations
def russian_peasant_arithmetic(a, b)
  ans = 0
  while b > 0
    ans += a if (b % 2 == 1)  # b&1 == 1 only when b is odd
    a *= 2                #a<<1 is same as a*2
    b /= 2                #b>>1 is same as b/2
  end
  return ans
end

#Using Bit-operations
def russian_peasant_bit(a, b)
  ans = 0
  while b > 0
    ans += a if (b & 1 == 1)  # b&1 == 1 only when b is odd
    a <<= 1               #a<<1 is same as a*2
    b >>= 1               #b>>1 is same as b/2
  end
  return ans
end

def main()
  puts "Enter the Algorithm
        \n1) Russian Peasant Arithmetic
        \n2) Russian Peasant Bit Operations"
  n = gets.chomp().to_i
  a = gets.chomp().to_f
  b = gets.chomp().to_f
  if (n == 1)
    puts russian_peasant_arithmetic(a, b) # --> a.b
  elsif (n == 2)
    puts russian_peasant_bit(a, b) # --> a.b
  else
    exit(0)
  end
end

main()
# => a.b
