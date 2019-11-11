require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new(
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }
    )
  end

  def test_create_library_object
    library = Library.new(books)
  end

  def test_get_books
      #don't need to create new instance of library object as library object already created in def setup
      #call the getter and assert the books eequal to the library Hash
      assert_equal({
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      }, library.get_books)
  end



end
