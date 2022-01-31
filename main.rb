=begin 

Nouns / Classes: Player, Game, Question

Roles: 
- Players will solve math problems. 
* Methods: calculate lives. 
* Needs a name or player number to be initialized. 
* Will only contain user output.

- Games will have questions and answers. 
* Methods: display current_player, question, answer, announces winner, calculates score. 
* Needs 2 players to be initialized. 
* Will contain both user I/O 

The Game class will contain the game loop. 
- Each instance of the loop is the other players turn. 
- It will also manage who the current_player is.

=end

require './games'
require './questions'

game = Game.new

print "----- NEW GAME ----- \n"

until (game.winner) 
  question_1 = Question.new

  print "Player #{game.current_player}: " + question_1.question + "\n> "
  answer = gets.chomp.to_i

  response = game.validate(game.current_player, answer, question_1.answer)
  print response
  puts "P1: #{game.player1_lives}/3 vs P2: #{game.player2_lives}/3"

  game.switch_player

  unless (game.winner)
    puts "----- NEW TURN ----- \n"
  end

end

puts "----- RESULTS -----"
puts "Player #{game.winner} wins with a score of #{game.score}/3 \n----- GAME OVER ----- \nGood bye!"