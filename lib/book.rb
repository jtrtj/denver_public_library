class Book

  def initialize(info)
    @info = info
  end

  def author_first_name
    @info[:author_first_name]
  end

  def author_last_name
    @info[:author_last_name]
  end

  def title
    @info[:title]
  end

  def publication_date
    @info[:publication_date]
  end

end
