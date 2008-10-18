def problem_2
  a = 100
  b = 200
  c = 300
  d = 400
  e = "bananas"
  f = "apples"

  [
     "a < b",
     "a < b && c != d",
     "!(a <= b || c == d)",
     "a > b || b > c || c > d || d > a",
     "(a > b || b < c) && d < a",
     "a % b < b",
     "e <= f",
     "e.reverse.reverse == e",
     "f > f || f < f",
     "!(f >= f && f >= f)"
   ].each do |exp|
     if eval(exp)
       puts "#{exp} =>  true".rjust(45)
     else
       puts "#{exp} => false".rjust(45)
     end
   end
end

def problem_4
  age = 50
  puts "Enter a name:"
  name = gets
  if name < "Hook"
    puts "Arrrr!!!"
    age = age / 2
    if name < "Chris"
      age = age - 8
      puts "Go left!"
    elsif name < "Fleming"
      age = age - 6
      puts "Go right!"
    else
      puts "Steer straight!"
    end
  else
    puts "Eeeeek!!!"
    age = age - 20
    if name < "Maroon"
      age = age / 2
      puts "Hard a starboard!"
    elsif name < "Robinson"
      age = age - 5
      puts "Hard to port!"
    else
      age = age - 10
      puts "Wheee!!!"
    end
  end

  if age < 15
    age = age + 4  
  end

  puts "I predict ... you're #{age} years old!"
end

def problem_5
  puts "Enter a number:"
  num = gets.to_i

  i = 0
  while i <= num
    if i % num == 0
      puts "X" * num
    else
      puts i.to_s + (" " * (num-2)) + i.to_s
    end
    i = i + 1
  end  
end

def pause
  puts "\nHit enter to continue"
  gets #pause
end

if $0 == __FILE__
  # Do the exam
  problem_2
  pause
  problem_4
  pause
  problem_5
end