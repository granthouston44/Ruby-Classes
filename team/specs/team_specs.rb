require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_create_team_object
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
  end

  #create test for getters
  def test_get_team_name
    #create new instance of the team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the getter and assert that the name is equal to code clan Rovers
    assert_equal("Code Clan Rovers", team.team_name)
  end

  def test_get_players
    #create new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the players getter and asser that the players array is assert_equal
    assert_equal(["Anna", "Ally", "Colin", "Lindsay"], team.players)
  end

  def test_get_coach
    #create new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the getter method for coach and assert that its equal to Maria
    assert_equal("Maria", team.coach)
  end

  def test_set_coach_name
    #create new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the setter method and change coach name to Niall
    team.coach = "Niall"
    #assert that the name has been changed from Maria to Niall
    assert_equal("Niall", team.coach)
  end

  def test_add_new_player
    #create new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the add new player method and add Andrew
    team.add_new_player("Andrew")
    #assert that the players array has increased in size
    assert_equal(5, team.players.length)
    # p team.players
  end

  def test_find_player__returns_name
    #create a new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the find player method for Andrew
    result = team.find_player("Ally")
    #assert that andrew has been found
    assert_equal("Ally", result)
  end

  def test_find_player__returns_nil
    #create a new instance of team class
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    #call the find player method for a non existent player
    result = team.find_player("WeeJimmy")
    #assert equal nil for player not found
    assert_nil(result)
  end

  def test_team_points__won
    team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
    team.game("win")
    assert_equal(3, team.points)
  end

  # def test_team__lose
  #
  # end
  #
  # def test
  #
  # end


end
