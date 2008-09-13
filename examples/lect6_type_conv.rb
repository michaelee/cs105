puts "Enter a temperature in degrees F and I'll convert it into degrees C:"
fahr = gets.to_f   # to_f converts the String to a floating point number
celsius = (fahr - 32) * 5 / 9
puts "#{fahr} degrees F = #{celsius} degrees C"