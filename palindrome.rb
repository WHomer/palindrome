require 'pry'
require 'benchmark'

def palindrome(num)
  first_num = num
  second_num = num.to_s.reverse.to_i
  total = first_num + second_num
  total if total.to_s == total.to_s.reverse
end

puts Benchmark.measure { (1 .. 1000000).to_a.uniq{|num| palindrome(num)} }
