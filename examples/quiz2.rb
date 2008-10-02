# Given assignments
a = 10
b = 20
c = "hello"
d = "CS 105"
e = true
f = false

# True / False
puts "a == b                        = #{a == b}"
puts "a <= b                        = #{a <= b}"
puts "c == c.reverse                = #{c == c.reverse}"
puts "c <= c                        = #{c <= c}"
puts "d != d.upcase                 = #{d != d.upcase}"
puts "a < b || c < d                = #{a < b || c < d}"
puts "a == b && (e || f)            = #{a == b && (e || f)}"
puts "!(e && f)                     = #{!(e && f)}"
puts "f || f || e || f              = #{f || f || e || f}"
puts "(a == c || e) && (a < b || f) = #{(a == c || e) && (a < b || f)}"

gets # pause
# while loop 1
a = 1
n = 7
while n > 0
  puts a
  a = a + 2
  n = n - 1
end

gets # pause
# while loop 2
n = 1
while n != 11
  if n < 6
    puts "*" * n
  else
    puts "#" * n
  end
  n = n + 1
end