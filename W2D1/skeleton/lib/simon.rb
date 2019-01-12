require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play
    take_turn until game_over

    game_over_message
    reset_game
  end

  def take_turn
    #debugger
    
    # if require_sequence == seq
    #   round_success_message
    #   add_random_color
    #   sequence_length += 1
    # else
    #   game_over == true
    # end
    show_sequence
    require_sequence
    "Test"
  end

  def show_sequence
    # debugger
    # puts "Watch closely"
    # sleep(1)
    self.add_random_color
    # p seq
    # sleep(2)
    # system("clear")
    puts seq
  end

  def require_sequence
    #debugger
    input_seq = []
    until input_seq.length == sequence_length
      puts "Please enter the sequence of color once at a time."
      color = gets.chomp
      input_seq << color
    end
    
    i = 0
    while i < seq.length
      return game_over = false if seq[i] != input_seq[i]
      i += 1
    end

    input_seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    "You passed this round!"
  end

  def game_over_message
    "Game Over"
  end

  def reset_game
    initialize
  end
end
