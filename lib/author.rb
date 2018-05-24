class Author
    attr_reader :books

  def initialize(info)
    @info = info
    @books = []
  end

  def add_book(title, publication_date)
    @books << Book.new({author_first_name: @info[:first_name],
                        author_last_name: @info[:last_name],
                        title: title,
                        publication_date: publication_date})
  end
end
