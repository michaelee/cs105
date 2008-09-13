# This program demonstrates the swapping of references stored in two variables

a = "apples"
b = "oranges"

puts "a = #{a}, b=#{b}"

temp = a
a = b
b = temp
puts "a = #{a}, b=#{b}"