# encoding: utf-8

require 'helper'

class Nanoc::Multimarkdown::FilterTest < Minitest::Test

  def test_filter
    filter = ::Nanoc::Multimarkdown::Filter.new({})
    src <<-MMD
    # Header
    
    Paragraph
    MMD
    out <<-HTML
<h1 id="header">Header</h1>

<p>Paragraph</p>
    HTML
    assert_equal(out, filter.run(src))
  end

end
