# encoding: utf-8

require 'helper'

class Nanoc::Multimarkdown::FilterTest < Minitest::Test

  def test_filter
    filter = ::Nanoc::Multimarkdown::Filter.new({})
    assert_equal("HELLO WORLD!", filter.run("Hello World!"))
  end

end
