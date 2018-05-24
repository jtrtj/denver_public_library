require './test/test_helper'
require './lib/library.rb'
require './lib/author.rb'
require './lib/book.rb'


class LibraryTest < Minitest::Test
  def test_it_exisits
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_library_collection_starts_empty
    dpl = Library.new

    assert_equal [], dpl.books
  end

  def test_book_can_be_added_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    dpl.add_to_collection(jane_eyre)

    assert_equal charlotte_bronte.books[0], dpl.books[0]
  end

  def test_multiple_books_can_be_added_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)

    assert_equal 3, dpl.books.length
    assert_equal charlotte_bronte.books[0], dpl.books[0]
    assert_equal harper_lee.books[0], dpl.books[1]
    assert_equal charlotte_bronte.books[1], dpl.books[2]
  end
end
