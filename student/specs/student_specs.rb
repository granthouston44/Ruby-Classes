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

  #test setter method for student name
  def test_set_student_name
    #create a student instance
    student_1 = Student.new("Grant", "G16")
    #use set student name to change student name to Alan
    student_1.set_name("Alan")
    #assert that name has been changed to Alan
    assert_equal("Alan", student_1.name)
  end

  def test_set_cohort
    #create student instance
    student_2 = Student.new("Debbie", "G16")
    #use set cohort to change students cohort to G14
    student_2.set_cohort("G14")
    #assert that the cohort has changed
    assert_equal("G14", student_2.cohort)
  end

  def test_student_speech
    #create a student instance
    student_3 = Student.new("Greg", "G16")
    #use the speech method to let the student talk
    result = student_3.speech("I can talk!")
    #assert that the speech return is "I can talk!"
    assert_equal("I can talk!", result)
  end

  def test_student_fav_language
    #create a student instance
    student_4 = Student.new("Stephen", "G16")
    #use the student fav language method
    result = student_4.fav_language('Ruby')
    #assert that the favourite langauge string is returned
    assert_equal("My fav language is Ruby!", result)
  end

end
