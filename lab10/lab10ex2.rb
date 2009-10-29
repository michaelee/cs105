numbers = [9, 4, 3, 6, 10, 5, 5, 6]
strings = ["peter", "piper", "picked", "a", "peck", "of", "pepper"]
arrays  = [[1, "one"], [2, "two"], ["name", "Michael"], [3, "three"]]


# Here's an example to get you started ########################################
evens = numbers.select {|x| x%2 == 0}

# Add your code below #########################################################
# (Replace the "hardcoded" values on the right of each assignment with your  ##
# iterator invocation and code!                                              ##

# the following five puzzles are based on the "numbers" array 

num_and_square = [[9, 81], [4, 16], [3, 9], [6, 36], [10, 100], [5, 25], [5, 25], [6, 36]]

english_num = ["nine", "four", "three", "six", "ten", "five", "five", "six"]

product = 972000

factorials = [362880, 24, 6, 720, 3628800, 120, 120, 720]

min_num = 3

# the following three puzzles are based on the "strings" array
#
start_with_p = ["peter", "piper", "picked", "peck", "pepper"]

shorter_than_5 = ["a", "peck", "of"]

sentence_length = 35

# the following puzzles are based on the "arrays" array

first_of_each = [1, 2, "name", 3]

numbered_values = ["one", "two", "three"]

named_values = ["Michael"]

swapped = [["one", 1], ["two", 2], ["Michael", "name"], ["three", 3]]


# You needn't touch the following! ############################################

puts "Evens: " + evens.inspect
puts "Numbers w/ Squares: " + num_and_square.inspect
puts "English numbers: " + english_num.inspect
puts "Product: #{product}"
puts "Factorials: " + factorials.inspect
puts "Min num: #{min_num}"

puts "Starts with 'p': " + start_with_p.inspect
puts "Shorter than 5: " + shorter_than_5.inspect
puts "Sentence length: #{sentence_length}"

puts "First of each: " + first_of_each.inspect
puts "Numbered values: " + numbered_values.inspect
puts "Named values: " + named_values.inspect
puts "Swapped: " + swapped.inspect
