# replace the body of each of the following methods with your own code (delete
# the "false" value first!)

def three_of_a_kind?(roll)
  false
end

def four_of_a_kind?(roll)
  false
end

def full_house?(roll)
  false
end

def small_straight?(roll)
  false
end

def large_straight?(roll)
  false
end

def yahtzee?(roll)
  false
end

# the following code tests the functionality of your methods, above -- you needn't
# touch any of it!

def assert(statement,val)
  ret = eval(statement)
  print "Checking '#{statement.ljust(35)}': "
  print "Expecting #{val}, got #{ret}. ".ljust(29)
  if ret == val
    puts "(PASS)" 
  else
    puts "(FAIL)" 
  end
end

[[1, 1, 1, 1, 1],
 [1, 1, 2, 1, 3],
 [2, 1, 2, 1, 2],
 [1, 1, 2, 2, 1]].each do |roll|
  assert("three_of_a_kind?(#{roll.inspect})", true)
end

[[1, 2, 3, 4, 5],
 [1, 1, 2, 2, 3]].each do |roll|
  assert("three_of_a_kind?(#{roll.inspect})", false)
end


[[1, 1, 1, 1, 2],
 [2, 2, 2, 1, 2],
 [3, 1, 3, 3, 3]].each do |roll|
  assert("four_of_a_kind?(#{roll.inspect})", true)
end

[[1, 1, 1, 2, 2],
 [1, 2, 3, 2, 1]].each do |roll|
  assert("four_of_a_kind?(#{roll.inspect})", false)
end

[[1, 1, 1, 2, 2],
 [3, 2, 2, 2, 3]].each do |roll|
  assert("full_house?(#{roll.inspect})", true)
end

[[1, 1, 2, 2, 3],
 [6, 1, 2, 1, 3]].each do |roll|
  assert("full_house?(#{roll.inspect})", false)
end

[[2, 3, 4, 1, 5],
 [3, 1, 2, 4, 6],
 [5, 6, 3, 3, 4]].each do |roll|
  assert("small_straight?(#{roll.inspect})", true)
end

[[1, 1, 1, 2, 2],
 [1, 2, 3, 5, 6],
 [4, 3, 4, 3, 4]].each do |roll|
  assert("small_straight?(#{roll.inspect})", false)
end

[[5, 4, 3, 2, 1],
 [4, 2, 3, 6, 5]].each do |roll|
  assert("large_straight?(#{roll.inspect})", true)
end

[[1, 2, 3, 4, 6],
 [2, 3, 3, 4, 5]].each do |roll|
  assert("large_straight?(#{roll.inspect})", false)
end

[[1, 1, 1, 1, 1],
 [6, 6, 6, 6, 6]].each do |roll|
  assert("yahtzee?(#{roll.inspect})", true)
end

[[1, 1, 1, 1, 2],
 [1, 2, 3, 4, 5],
 [5, 5, 1, 5, 5]].each do |roll|
  assert("yahtzee?(#{roll.inspect})", false)
end

