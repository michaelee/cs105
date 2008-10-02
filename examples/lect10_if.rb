puts "Please enter the temperature:"
temp = gets.to_i
puts "So it's #{temp} today."
if temp < 50
  puts "Going out?  Are you nuts?"
elsif temp < 65
  puts "Brrr!  I'm staying home!"
else 
  puts "Leave the coat!"
end
puts "Have a nice day!"
