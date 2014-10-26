#!/usr/bin/ruby env

palindrome = 1

(100..999).each do |number|
  (100..number).each do |n|
    product = number * n
    if product.to_s == product.to_s.reverse and product > palindrome
      palindrome = product
    end
  end
end

puts "The largest palindrome made from two 3-digit numbers is #{palindrome}"
