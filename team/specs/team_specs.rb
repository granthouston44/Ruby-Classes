require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

def test_creat_team_object
  team = Team.new("Code Clan Rovers", ["Anna", "Ally", "Colin", "Lindsay"], "Maria")
end





end
