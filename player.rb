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
end