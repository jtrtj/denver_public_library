class Author
    attr_reader :books

  def initialize(info)
    @info = info
    @books = []
  end
end
