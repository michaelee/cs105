SCORE_CATEGORIES    = [["Aces",            '1'],  # Each entry is an array of
                       ["Twos",            '2'],  # ["Name", "Abbreviation"]
                       ["Threes",          '3'],
                       ["Fours",           '4'],
                       ["Fives",           '5'],
                       ["Sixes",           '6'],
                       ["Three of a kind", 'T'], 
                       ["Four of a kind",  'F'],
                       ["Full House",      'H'],
                       ["Small Straight",  'S'],
                       ["Large Straight",  'L'],
                       ["Yahtzee",         'Y'],
                       ["Chance",          'C']]

# The code below allows you to invoke the 'sum' and 'sum_of' methods on arrays.
# You can skip it --- you needn't understand how it works to proceed.
class Array
  def sum
    self.inject {|sum,val| sum+val}
  end

  def sum_of(num)
    self.inject(0) {|sum,val| val == num ? sum+val : sum }
  end
end


# Paste in your implementations of three_of_a_kind?, four_of_a_kind?,       
# full_house?, small_straight?, large_straight?, and yahtzee? from the      
# previous lab after this comment.                                          

### PASTE YOUR CODE FROM THE PREVIOUS LAB HERE ###

def play_turn
  roll = []
  #
  # ENTER YOUR CODE FOR play_turn HERE
  #
  roll
end


def get_scores_by_category(roll)
  #
  # ENTER YOUR CODE FOR get_scores_by_category HERE
  #
  # For your convenience, included below is a Hash already containing all the
  # category names as keys.  Your job is to populate the values with the scores
  # for the given roll.  If you choose to the delete the given code and start
  # afresh, make sure that your implementation returns a Hash  containing keys
  # spelled *exactly* as shown.
  #
  {
    "Aces"            => 0,
    "Twos"            => 0,
    "Threes"          => 0,
    "Fours"           => 0,
    "Fives"           => 0,
    "Sixes"           => 0,
    "Three of a kind" => 0,
    "Four of a kind"  => 0,
    "Full House"      => 0,
    "Small Straight"  => 0,
    "Large Straight"  => 0,
    "Yahtzee"         => 0,
    "Chance"          => 0,
  }
end


# The following code (including the main game logic in play_game) has been 
# written for you.  You should NOT need to modify any of it to get the program
# to work correctly.
#
# I do recommend, however, reading through it after you're done to understand
# how things work.  There are a few things we might not have covered in class,
# so feel free to shoot me an e-mail with questions or do a little bit of 
# research online (http://www.ruby-lang.org/en/documentation/ is a good place
# to start).
def play_game
  total_score = 0
  scores = {}
  13.times do |turn|
    puts
    puts " TURN # #{turn+1}, CURRENT SCORE = #{total_score} ".center(80, '*')

    roll = play_turn
    puts
    puts " Final roll: #{roll.inspect} ".center(80, '-')
    puts
    puts "How would you like to score your roll?"
    puts "(Only remaining score categories are shown)"
    puts

    all_scores = get_scores_by_category(roll)
    SCORE_CATEGORIES.each do |name, abbr|
      unless scores.include? name
        puts "#{abbr}. #{name}:".ljust(20) + "(#{all_scores[name]} points)"
      end
    end
    
    puts "\nEnter the letter for your score category:"
    category = ''
    loop do
      print "> "
      choice = gets.chomp
      category, abbr = SCORE_CATEGORIES.find{|c,a| a == choice.upcase}
      break if category && !scores[category]
    end
    total_score += scores[category] = all_scores[category]
  end
  puts "\n#{'*'*80}\n\n"
  puts "You scored #{total_score} points.  Congratulations!".center(80)
  puts "\n#{'*'*80}\n\n"
  total_score
end

if $0 == __FILE__
  high_score = 0
  loop do
    score = play_game
    if score > high_score
      puts "You made a new High Score!"
      high_score = score
    else
      puts "The high score is currently #{high_score}."
    end
    puts "Play again? (Y/N)"
    loop do
      print "> "
      if gets.chomp.downcase == 'y'
        break
      else
        exit
      end
    end
  end
end