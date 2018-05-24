require './test/test_helper'
require './lib/library.rb'
require './lib/author.rb'
require './lib/book.rb'

class LibraryTest < Minitest::Test
  def test_it_exisits
    dpl = Library.new

    assert_instance_of Library, dpl
  end

end
