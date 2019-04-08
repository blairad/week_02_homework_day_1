class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

def coach_name_change(gaffer)
  @coach = gaffer
end

  def add_new_player(new_signing)
    @players.push(new_signing)
  end

  def result(result)
    @points += 3 if result == "win"

  end
end
