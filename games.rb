class Game
  attr_accessor :current_player, :player1_lives, :player2_lives, :winner, :score

  def initialize
    @player1_lives = 3
    @player2_lives = 3
    @current_player = 1
    @winner = nil
    @score = 0
  end

  def validate(player, answer, attempted_answer)
    if (attempted_answer == answer)
      puts "YES! You are correct."
    else
      player == 1 ? @player1_lives -= 1 : @player2_lives -= 1
      puts "Seriously? No!"
    end 

    if (@player1_lives == 0) 
      @winner = 2
      @score = @player2_lives
    elsif (@player2_lives == 0)
      @winner = 1
      @score = @player1_lives
    end

  end

  def switch_player
    @current_player == 1 ? @current_player = 2 : @current_player = 1
  end

end