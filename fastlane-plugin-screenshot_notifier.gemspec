# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/screenshot_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-screenshot_notifier'
  spec.version       = Fastlane::ScreenshotNotifier::VERSION
  spec.author        = 'Moyuru Aizawa'
  spec.email         = 'lvla0805@gmail.com'

  spec.summary       = 'Post screenshots to a pull request'
  # spec.homepage      = "https://github.com/cats-oss/fastlane-plugin-screenshot_notifier"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '0.49.1')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.121.1')
end
