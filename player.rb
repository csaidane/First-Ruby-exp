class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
  def lost
    puts "#{@name} lost a life!"
    @lives = @lives - 1
  end
  def is_dead
    @lives <= 0
  end
end