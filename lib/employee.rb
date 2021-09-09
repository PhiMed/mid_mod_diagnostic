class Player
  attr_reader :name,
              :position

  def initialize(attributes = {name => players_name, position => players_position})
    @name = attributes[:name]
    @position = attributes[:position]
  end
end
