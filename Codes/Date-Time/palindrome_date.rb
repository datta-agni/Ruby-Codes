require "date"

def palindrome_date(n)
  palindrome_date = Enumerator.new do |yielder|
    ("2021"..).each do |y|
      m, d = y.reverse.scan(/../) # let the Y10K kids handle 5 digit years
      strings = [y, m, d]
      yielder << strings.join("-") if Date.valid_date?(*strings.map(&:to_i))
    end
  end
  puts palindrome_date.take(n)
end

def main()
  puts "Enter how many Palindrome dates you want!"
  num = gets.chomp().to_i
  palindrome_date(num)
end

main()
