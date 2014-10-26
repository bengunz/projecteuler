#!/usr/bin/ruby

largest = (1..20).reduce(:*) || 1
multiple = largest

(20..largest).step(20).each do |n|
  divisible = true
  (2..20).each do |x|
    if n % x != 0
      divisible = false
      break
    end
  end
  if divisible and n < multiple
    multiple = n
    break
  end
end

puts "The multiple is #{multiple}"
