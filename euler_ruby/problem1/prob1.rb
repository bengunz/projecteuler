#!/usr/bin/env ruby

numbers = (0..999)
natural_numbers = []

numbers.each do |number| 
  if number % 3 == 0 or number % 5 == 0
    natural_numbers <<  number
  end
end

summation = 0

natural_numbers.each { |x| summation += x }

# print natural_numbers
print "The sum of all natural numbers less than 1000 is: #{summation} .\n"
