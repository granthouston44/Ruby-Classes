class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  #longform defining of setters and getters
  #   def team_name
  #     @team_name
  #   end
  #
  #   def players
  #     @players
  #   end
  #
  #   def coach
  #     @coach
  #   end
  #
  # def set_coach(coach_name)
  # @coach = coach_name
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player(name)
    if @players.include? name
      name
    end
  end

  def game(result)
    if result == "win"
      @points += 3
    else
      @points -= 3
    end
  end


end
