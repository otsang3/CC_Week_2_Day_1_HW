class SportsTeam
  attr_reader :team_name, :players, :coach
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players << new_player
  end

  def get_all_players()
    return @players
  end

  def find_player(name)
    for player in @players
      if player == name
        return true
      end
    end
    return false
  end


  def match_result(result)
    if result == "win"
      @points += 1
    elsif result == "lose"
      @points -= 1
    end
  end

  def points()
    return @points
  end


  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end

end
