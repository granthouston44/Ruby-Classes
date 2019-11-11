class Team

  attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
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


  end
