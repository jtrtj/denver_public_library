require './test/test_helper'
require './lib/author.rb'

class AuthorTest < Minitest::Test
  def setup
    author_info = {first_name: "Charlotte", last_name: "Bronte"}
    @charlotte_bronte = Author.new(author_info)
  end

  def test_it_exists
    assert_instance_of Author, @charlotte_bronte
  end

  def test_author_starts_with_no_books
    assert_equal [], @charlotte_bronte.books
  end

  def test_books_can_be_added_to_author
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
  end

end
