loop do 
  puts "Stop pestering you? (yes/no)"
  answer = gets.chomp
  if answer.downcase == "yes"
    break
  end
  puts "Okedoke!"
end