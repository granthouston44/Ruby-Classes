class Library

  #what arguements do we want to give the
  # Library.mew() call
  def initialize(input_books)
    @books = input_books
  end

  def get_books
    @books
  end

  def find_book_info(book_title)
    if @books.include? book_title
      p book_title
    end
  end
end
