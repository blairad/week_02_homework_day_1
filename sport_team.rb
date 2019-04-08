class Team

  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

def coach_name_change(gaffer)
  @coach = gaffer
end

end
