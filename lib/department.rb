class Team
  attr_reader :country,
              :players,
              :players_by_position

  attr_accessor :eliminated

  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
    @players = []
    @players_by_position
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    @players.find_all do |player|
      player.position == position
    end
  end
end
