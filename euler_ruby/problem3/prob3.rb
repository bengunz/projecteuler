#!/usr/bin/ruby env

def largest_prime(number)
  divisor = 2
  largest_prime = 1

  while divisor != number do
    if number % divisor == 0
      largest_prime = divisor
      number = number / divisor
    else 
      divisor += 1
    end
    if divisor == number
      largest_prime = divisor
    end
  end

  largest_prime

end

initial_number = 600851475143
prime = largest_prime(initial_number)

puts "The largest prime is: #{prime} \n"
