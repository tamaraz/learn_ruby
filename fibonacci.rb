require "pp" #pretty print

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

(0..50).each do |num|
  #puts [num, fib(num)]
  pp [num, fib(num)]
end
