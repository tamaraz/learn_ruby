require "pp" #pretty print

#iterative Fibonacci method with storing values in a array
# 0 1 1 2 3 5 8 ...
def fib(n)
  if n < 0
    return nil
  end

  if n == 0
    return 0
  end

  values = []
  0.upto(n) do |num|
    if num == 0
      values << 0
    elsif num <= 2
      values << 1
    else
      values << values[num-1] + values[num-2]
    end
  end

  return values.last
end

(0..100).each do |num|
  pp [num, fib(num)]
end
