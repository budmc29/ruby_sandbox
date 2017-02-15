require 'minitest/autorun'
require 'minitest/pride'
require 'fileutils'

require_relative './suggestion_box'

class SuggestionBoxTest < MiniTest::Unit::TestCase
  def test_it_saves_an_item
    @box = SuggestionBox.new

    data = [{question1: "question"}]

    assert_equal data, @box.add_reply(question1: 'question')
  end
end
