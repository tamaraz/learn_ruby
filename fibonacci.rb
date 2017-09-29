require "pp" #pretty print
require 'memoist' #adding memoization module

extend Memoist #function from memoist library

# recursive Fibonacci method with caching
# 0 1 1 2 3 5 8 ...
def fib(n)
  if n < 0
    return nil
  end
  if n == 0
    return 0
  end
  if n <= 2
    return 1
  end
  fib(n-1) + fib(n-2)
end

memoize :fib

(0..100_000).each do |num|
  #puts [num, fib(num)]
  pp [num, fib(num)]
end
