#!/usr/bin/env ruby

def even_fib(first, second, numbers)
  third = first + second
  if third > 4000000
    return third, numbers
  end
  if third % 2 == 0
    numbers << third
  end
  even_fib(second, third, numbers)
end

even_fibonacci_number = []

last_num, even_fibonacci_number = even_fib(1, 1, even_fibonacci_number)

sum = 0

even_fibonacci_number.each { |num| sum += num }

print "Sum of even Fibonacci numbers is #{sum} \n"
