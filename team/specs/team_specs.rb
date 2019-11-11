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

end
