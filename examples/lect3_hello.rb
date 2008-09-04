# Version 1, without a variable
puts "Hello, Michael"
puts "Pleased to meet you, Michael."
puts "Michael, welcome to CS 105!"
puts "The name of your instructor is Michael Saelee."
puts "Thanks for reading, Michael!"

# Version 2, DRY with a variable
name = "Michael"
puts "Hello, " + name
puts "Pleased to meet you, " + name + "."
puts name + ", welcome to CS 105!"
puts "The name of your instructor is Michael Saelee."
puts "Thanks for reading, " + name + "!"

# Version 3, DRY with a variable, interpolated
name = "Michael"
puts "Hello, #{name}"
puts "Pleased to meet you, #{name}."
puts "#{name}, welcome to CS 105!"
puts "The name of your instructor is Michael Saelee."
puts "Thanks for reading, #{name}!"