[![Build Status](https://travis-ci.org/nanoc/nanoc-external.png)](https://travis-ci.org/nanoc/nanoc-external)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-external.png)](https://codeclimate.com/github/nanoc/nanoc-external)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-external/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-external)

# nanoc-external

This provides a filter that allows [nanoc](http://nanoc.ws)
to process content by executing an external program.

## Installation

`gem install nanoc-external`

## Usage

```ruby
filter :external, :exec => 'command-name'
```

The only requirement is that the external command must be
able to receive its input from STDIN and it must sent its
output to STDOUT.

Options passed to this filter will be passed on to the
external command. For example:

```ruby
filter :external, exec: 'multimarkdown', options: => %w(--accept --mask --labels --smart)
```

If the executable is not in your PATH, use its full path:

```ruby
filter :external, exec: '/opt/local/bin/htmlcompressor'
```
