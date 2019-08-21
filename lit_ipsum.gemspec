# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lit_ipsum/version'

Gem::Specification.new do |spec|
  spec.name          = 'lit_ipsum'
  spec.version       = LitIpsum::VERSION
  spec.authors       = ['Jac Bergenson']
  spec.email         = ['jonathan.bergenson@gmail.com']

  spec.summary       = 'Lorem ipsum text, but with classical literature.'
  spec.homepage      = 'https://github.com/bergbergs/lit_ipsum'
  spec.license       = 'MIT'

  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/bergbergs/lit_ipsum'
  spec.metadata['changelog_uri'] = 'https://github.com/bergbergs/lit_ipsum/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/**/*'] + %w[License.txt CHANGELOG.md README.md]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
end
