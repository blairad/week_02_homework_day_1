require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    assert_equal('Spurs', team.team_name)
  end

  def test_player_count
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    assert_equal(3, team.players.count)
  end

  def test_coach_name
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    assert_equal('Sven', team.coach)
  end

  def test_coach_name_change
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    assert_equal('Keegan', team.coach_name_change("Keegan"))
  end

  def test_add_new_player
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    team.add_new_player('regen_4')
    assert_equal(4, team.players.count)
  end

  def player_already_in_team
    team = Team.new('Spurs',['regen_1', 'regen_2', 'regen_3'], 'Sven')
    assert_equal(false, team.players.include? 'regen_5')
  end

end
