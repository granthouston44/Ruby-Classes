require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

#test that class has been created and we can create a student object
  def test_can_create_student_object
#create new student object and pass in parameters
    student = Student.new("Grant", "G16")
  end

#test student name method
  def test_student_name
    #create new student instance named Grant
    grant = Student.new("Grant", "G16")
    #use getter method to grab student object name
    #assert that student object has name grant
    assert_equal("Grant", grant.name)
  end

#test student cohort method
def test_student_cohort
  #create new student instance
  student = Student.new("Grant", "G16")
  #use getter method to grab student cohort number
  #assert that the student object instance has cohort G16
  assert_equal("G16", student.cohort)
end

end
