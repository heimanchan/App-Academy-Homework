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
    until game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    #debugger
    input_seq = []
    i = 0
    until input_seq.length == sequence_length
      puts "Please enter the sequence of color once at a time."
      color = gets.chomp
      return game_over = false if seq[i] != color
      input_seq << color

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

