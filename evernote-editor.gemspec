# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evernote_editor/version'

Gem::Specification.new do |gem|

  gem.name          = "evernote-editor"
  gem.version       = EvernoteEditor::VERSION
  gem.authors       = ["hpoydar"]
  gem.email         = ["henry@poydar.com"]
  gem.summary   = %q{Command line creation and editing of Evernote notes}
  gem.description       = %q{Simple command line creation and editing of Evernote notes in Markdown format with your favorite editor via a gem installed binary}
  gem.homepage      = "https://github.com/hpoydar/evernote-editor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "evernote_oauth", "~> 0.1.6"
  gem.add_runtime_dependency "highline", "~> 1.6.15"
  gem.add_runtime_dependency "redcarpet", "~> 2.2.2"
  gem.add_runtime_dependency "reverse_markdown", "~> 0.4.3"

  gem.add_development_dependency "fakefs", "~> 0.4.2"
  gem.add_development_dependency "rake", "~> 10.0.3"
  gem.add_development_dependency "rspec", "~> 2.12.0"

end
