CARDS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

def hand_value(hand)
  value = 0
  # First calculate values ignoring aces
  hand.each do |card|
    if card == 'J' || card == 'Q' || card == 'K'
      value += 10
    elsif card != 'A'
      value += card.to_i
    end
  end
  # Then add aces as 11 unless they would bust the hand
  hand.each do |card|
    if card == 'A'
      if value > 10
        value += 1
      else
        value += 11
      end
    end
  end
  value
end

def play_blackjack(upcard)
  hand = [upcard]
  while hand_value(hand) < 17
    hand << CARDS[rand(13)]
  end
  hand_value(hand)
end

def simulate(upcard)
  busts = 0
  1000.times do
    hand_val = play_blackjack(upcard)
    if hand_val > 21
      busts = busts + 1
    end
  end
  busts
end

CARDS.each do |card|
  puts "Busts for #{card} = #{simulate(card)}"
end