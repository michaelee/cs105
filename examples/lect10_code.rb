secret_code = 7890
entered_code = 0
while secret_code != entered_code
  puts "Please enter a secret code:"
  entered_code = gets.to_i
end
puts "Welcome in!"
