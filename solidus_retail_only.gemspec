# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_retail_only/version'

Gem::Specification.new do |spec|
  spec.name          = "solidus_retail_only"
  spec.version       = SolidusRetailOnly::VERSION
  spec.authors       = ["Noel"]
  spec.email         = ["noel@2bedigital.com"]

  spec.summary       = "This gem permit create user with role retail"
  spec.description   = "This gem permit create user with role retail"
  spec.homepage      = "https://github.com/2beDigital/solidus_retail_only"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency 'solidus_core', '~> 2.1'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'capybara', '~> 2.4'
  spec.add_development_dependency 'coffee-rails'
end
