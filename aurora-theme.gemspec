Gem::Specification.new do |s|
  s.name          = 'aurora-theme'
  s.version       = "1.0.#{Time.now.utc.strftime '%-y.%-j'}#{ENV['PATCH'] ? ".#{ENV['PATCH']}" : ''}"
  s.license       = 'MIT'
  s.author        = 'iBug'
  s.homepage      = 'https://ibug.github.io/aurora-theme'
  s.summary       = 'A Jekyll theme for GitHub Pages'
  s.description   = 'Aurora is a clean, responsive Jekyll theme for GitHub Pages with immersive design'

  s.files         = `git ls-files -z`.split("\0").select { |f| f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i) }
  s.metadata      = {
    'source_code_uri' => 'https://github.com/iBug/aurora-theme',
    'homepage_uri' => 'https://ibug.github.io/aurora-theme'
  }

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency 'jekyll', '~> 3.0'
  s.add_runtime_dependency 'jekyll-seo-tag', '~> 2.0'
  s.add_development_dependency 'html-proofer', '~> 3.0'
  s.add_development_dependency 'rubocop', '~> 0.50'
  s.add_development_dependency 'w3c_validators', '~> 1.3'
end
