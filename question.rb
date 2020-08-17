class Question
  attr_reader :first, :second, :ans

  def initialize
    @first = rand(1..20)
    @second = rand(1..20)
    @ans = @first + @second
  end

end

