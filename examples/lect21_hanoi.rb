def hanoi(n, from, to, using)
  if (n == 1)
    puts "move from #{from} to #{to}"
  else
    hanoi(n - 1, from,  using, to)
    hanoi(1,     from,  to,    using)
    hanoi(n - 1, using, to,    from)
  end
end

hanoi(1, "A", "C", "B");
