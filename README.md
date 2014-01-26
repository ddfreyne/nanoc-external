[![Build Status](https://travis-ci.org/nanoc/nanoc-multimarkdown.png)](https://travis-ci.org/nanoc/nanoc-multimarkdown)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-multimarkdown.png)](https://codeclimate.com/github/nanoc/nanoc-multimarkdown)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-multimarkdown/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-multimarkdown)

# nanoc-multimarkdown

This provides a [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) filter for [nanoc](http://nanoc.ws).

## Installation

`gem install nanoc-multimarkwdown`

## Usage

```ruby
filter :multimarkdown
```

Options passed to this filter will be passed on to MultiMarkdown.
For example:

```ruby
filter :multimarkdown, :opts => %w(--accept --mask --labels --smart)
```

If the `multimarkdown` executable is not in your PATH, pass its path
explicitly:

```ruby
filter :multimarkdown, :path => '/opt/local/bin'
```
