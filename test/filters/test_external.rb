# encoding: utf-8

require 'helper'

class Nanoc::External::FilterTest < Minitest::Test

  def test_filter
    filter = ::Nanoc::External::Filter.new({})
    src = <<-SHAKESPEARE
    Shall I compare thee to a Summer's day?
    Thou art more lovely and more temperate
    SHAKESPEARE
    assert_match(/^\s*2\s*$/, filter.run(src, :exec => 'wc', :options => %w( -l ) ))
  end

end
