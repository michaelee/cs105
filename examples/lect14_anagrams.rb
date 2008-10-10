N = 100
i = 0
while i < N
  if i.to_s == i.to_s.reverse
    puts i
  end
  i = i + 1
end