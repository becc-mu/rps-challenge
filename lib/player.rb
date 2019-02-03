class Player
  attr_reader :name
  attr_accessor :choice
  def initialize(name)
    @name = name
    @choice = choice
  end

  def update_choice(choice)
    @choice = choice
  end
end
