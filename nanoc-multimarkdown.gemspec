# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/multimarkdown/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-multimarkdown'
  s.version     = Nanoc::MultiMarkdown::VERSION
  s.homepage    = 'http://nanoc.ws/'
  s.summary     = 'Plugin template for nanoc'
  s.description = 'Provides a :multimarkdown filter for nanoc'

  s.author  = 'Lifepillar'
  s.email   = 'github@lifepillar.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-multimarkdown.gemspec' ]
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc-core')
  s.add_runtime_dependency('multimarkdown')
  s.add_development_dependency('bundler')
end
