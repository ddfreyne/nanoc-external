# encoding: utf-8

require 'helper'

class Nanoc::External::FilterTest < Minitest::Test

  def test_filter_no_options
    filter = ::Nanoc::External::Filter.new({})
    src = "Shall I compare thee to a Summer's day?"
    out = 'U2hhbGwgSSBjb21wYXJlIHRoZWUgdG8gYSBTdW1tZXIncyBkYXk/Cg=='
    assert_equal(out, filter.run(src, :exec => '/usr/bin/base64'))
  end

  def test_filter_with_options
    filter = ::Nanoc::External::Filter.new({})
    src = <<-SHAKESPEARE
    Shall I compare thee to a Summer's day?
    Thou art more lovely and more temperate
    SHAKESPEARE
    assert_match(/^\s*2\s*$/, filter.run(src, :exec => 'wc', :options => %w( -l ) ))  
  end
end
