################## puts with Strings ##################

# The next 6 lines all print Hello on a line by itself
puts 'Hello'
puts "Hello"
puts('Hello')
puts("Hello")
puts(    'Hello'    )
puts "Hel" + "lo"

puts  # prints an empty line
puts "Hello", "Bye"  # prints Hello and Bye on separate lines
puts "Hello, Bye"    # prints Hello, Bye on a single line

puts

################## puts with Strings and numbers ##################

# The next 3 lines print 105
puts 105
puts "105"
puts 100 + 5

puts "100" + "5"    # prints 1005 (why?)

puts "Hello", 105   # prints Hello and 105 on separate lines

################## Some basic arithmetic ##################

# The next 3 lines print 105
puts 52.5 * 2
puts 210 / 2
puts (400-190) / (4 * 0.5)  # The parentheses control arithmetic precedence