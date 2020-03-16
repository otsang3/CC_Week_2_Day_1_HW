require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team_class.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < MiniTest::Test

def setup()
  @sports_team1 = SportsTeam.new("Barcelona", ["Messi", "Suarez", "Griezmann", "De Jong", "Vidal", "Busquets", "Alba", "Pique", "Semedo", "Lenglets", "Ter Stegen"], "Quique Setien")
end

def test_get_team_name()
  assert_equal("Barcelona", @sports_team1.team_name())
end

def test_get_players()
  assert_equal(["Messi", "Suarez", "Griezmann", "De Jong", "Vidal", "Busquets", "Alba", "Pique", "Semedo", "Lenglets", "Ter Stegen"], @sports_team1.players())
end

def test_get_coach
  assert_equal("Quique Setien", @sports_team1.coach)
end

def test_set_coach
  @sports_team1.coach = "Luis Enrique"
  assert_equal("Luis Enrique", @sports_team1.coach)
end

def test_add_player()
  @sports_team1.add_player("Neymar")
  assert_equal(["Messi", "Suarez", "Griezmann", "De Jong", "Vidal", "Busquets", "Alba", "Pique", "Semedo", "Lenglets", "Ter Stegen", "Neymar"], @sports_team1.players())
end

# def test_find_player__true()
#   players = @sports_team1
#   @sports_team1.find_player(players, "Neymar")
#   assert_equal(true, @sports_team1.find_player("Neymar"))
# end

def test_find_player__true()
  assert_equal(true, @sports_team1.find_player("Messi"))
end

def test_find_player__false
  assert_equal(false, @sports_team1.find_player("Neymar"))
end

def test_match_result__win()
  @sports_team1.match_result("win")
  assert_equal(1, @sports_team1.points)
end

def test_match_result__lose()
  @sports_team1.match_result("lose")
  assert_equal(-1, @sports_team1.points)
end

end
