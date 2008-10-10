values = []

loop do
  puts "Enter a value:"
  value = gets.to_i
  if value == -1
    break
  else
    values << value
  end
end

values.each { |value| puts "#" * value }