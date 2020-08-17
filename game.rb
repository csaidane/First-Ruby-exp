require_relative './player'
require_relative './question'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
  end

  def new_turn
    #puts @players.each {|player| puts "#{player.name} lives: #{player.lives}"}
    @players.each {|player| puts "#{player.name} lives: #{player.lives}"}
    puts '---------'
    puts 'New Turn'
    puts '---------'
    @players.reverse!
  end

  def players_left
    @players.select{|player| !player.is_dead}
  end

  def winner_is
    puts "And the winner is #{players_left.first.name}. This player has #{players_left.first.lives} out of 3 left."
  end

  def gameOver
    players_left.length == 1
  end

  def play
    until gameOver do
      new_turn
      current = @players[0]
      question = Question.new
      puts "#{current.name}: What does #{question.first} plus #{question.second} equal?"
      answer = $stdin.gets.chomp.to_i
      puts '---------'
      if answer == question.ans
        puts "YES ! Well done"
      else
        puts "Seriously? WRONG!"
        current.lost
      end
    end
  
  winner_is
  end

end




