# Write a program that uses the Sieve of Eratosthenes
# to find the sum of all the primes from 2 up to a given number
def sum_of_all_primes(limit)
  list_of_all_numbers = (2..limit).to_a #create a list of numbers from 2 to limit
  primes = get_primes(list_of_all_numbers)

  puts "Primes #{primes}"
  puts "Sum of all primes #{primes.sum}"
end

def get_primes(list)
  primes = []
  start_num = list.first

  primes << start_num # the first element in the list is prime
  list.delete(start_num) # remove first element from the list, could use shift method
  list.delete_if {|num| num % start_num == 0 }  # remove multiples of start_num - prime

  # list.each do |num|
  #   if (num == start_num)
  #     primes << num
  #   end
  #   if (num % start_num == 0)
  #     list.delete(num)
  #   end
  # end

  if (list.any?) # find next prime number, repeat till list is empty
    primes.concat(get_primes(list))
  end

  return primes
end

sum_of_all_primes(120)

# test method
require "prime"
puts "Prime numbers #{Prime.each(120).to_a}"
