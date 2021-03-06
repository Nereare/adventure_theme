# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'adventure_theme'
  spec.version       = '0.5.6'
  spec.authors       = ['Igor Padoim']
  spec.email         = ['igorpadoim@gmail.com']
  spec.license       = 'Hippocratic'

  spec.summary       = 'A jekyll theme for Adventure-generated adventures.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/Nereare/adventure-theme'

  spec.metadata['homepage_uri']      = spec.homepage
  spec.metadata['source_code_uri']   = 'https://github.com/Nereare/adventure-theme'
  spec.metadata['changelog_uri']     = 'https://github.com/Nereare/adventure-theme/blob/master/CHANGELOG.md'
  spec.metadata['documentation_uri'] = 'https://nereare.github.io/adventure-theme/'
  spec.metadata['bug_tracker_uri']   = 'https://github.com/Nereare/adventure-theme/issues'

  spec.files         = `git ls-files -z`.split('\x0').select do |f|
    f.match(%r{^((_includes|_layouts|_plugins|_sass|assets|css)/|(LICENSE|README|404)((\.(txt|md|markdown|html|scss|css)|$)))}i)
  end

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_development_dependency 'activesupport', '~> 6.0.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'html-proofer', '~> 3.15.1'
  spec.add_development_dependency 'nokogiri', '>= 1.10.8'

  spec.add_dependency 'jekyll', '~> 4.0.0'
  spec.add_dependency 'jekyll-feed', '>= 0.12.1', '< 0.14.0'
  spec.add_dependency 'jekyll-seo-tag', '~> 2.6.1'
  spec.add_dependency 'jekyll-sitemap', '>= 1.3.1', '< 1.5.0'
end
