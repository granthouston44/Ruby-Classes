require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_can_create_student_object
    student = Student.new("Grant", "G16")
  end







end
