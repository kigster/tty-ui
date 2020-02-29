lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tty/ui/version'

Gem::Specification.new do |spec|
  spec.name          = 'tty-ui'
  spec.version       = Tty::Ui::VERSION
  spec.authors       = ['Konstantin Gredeskoul']
  spec.email         = ['kigster@gmail.com']

  spec.summary       = %q{The UI assembles a collection of primitives that one might want to use while building TTY-based applications.}
  spec.description   = %q{While TTY Toolkit's `tty-box` can create beautiful ASCII boxes with properly aligned text, the number of possible arguments is long, and so sometimes you might want to use simple primitives, while keeping the ability to customize them.}
  spec.homepage      = 'https://github.com/kigster/tty-ui'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kigster/tty-ui'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'tty-box'
  spec.add_dependency 'tty-cursor'
  spec.add_dependency 'tty-color'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
