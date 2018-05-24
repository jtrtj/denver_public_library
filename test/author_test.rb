require './test/test_helper'
require './lib/author.rb'
require './lib/book.rb'
require 'pry'

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
    @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")

    assert_equal 'Charlotte', @charlotte_bronte.books[0].author_first_name
    assert_equal 'Bronte', @charlotte_bronte.books[0].author_last_name
    assert_equal 'Jane Eyre', @charlotte_bronte.books[0].title
    assert_equal 'October 16, 1847', @charlotte_bronte.books[0].publication_date
  end

  def test_list_of_books_can_be_returned
    @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")

    assert_instance_of Book, @charlotte_bronte.books[0]
  end

  def test_author_can_have_multiple_books_with_different_info
    @charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    @charlotte_bronte.add_book("Villette", "1853")

    assert_equal 2, @charlotte_bronte.books.length

    assert_equal 'Charlotte', @charlotte_bronte.books[0].author_first_name
    assert_equal 'Bronte', @charlotte_bronte.books[0].author_last_name
    assert_equal 'Jane Eyre', @charlotte_bronte.books[0].title
    assert_equal 'October 16, 1847', @charlotte_bronte.books[0].publication_date

    assert_equal 'Charlotte', @charlotte_bronte.books[1].author_first_name
    assert_equal 'Bronte', @charlotte_bronte.books[1].author_last_name
    assert_equal 'Villette', @charlotte_bronte.books[1].title
    assert_equal '1853', @charlotte_bronte.books[1].publication_date
  end
end
