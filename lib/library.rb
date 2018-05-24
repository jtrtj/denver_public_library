class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(title)
    titles_in_collection.include?(title)
  end

  def titles_in_collection
    @books.map do |book|
      book.info[:title]
    end
  end

end
