a = 100
b = 250
while b != 0
  t = b
  b = a % b
  a = t
  puts "a = #{a}, b = #{b}"
end
puts "Result = #{a}"