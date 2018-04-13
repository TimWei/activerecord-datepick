# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord-datepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-datepicker"
  spec.version       = Datepicker::VERSION
  spec.authors       = ["timwei"]
  spec.email         = ["aaasdslee@gmail.com"]

  spec.summary       = %q{ActiveRecord date pick methods}
  spec.description   = %q{providing some helpful methods for ActiveRecord relate to Date class.}
  spec.homepage      = "https://github.com/TimWei/activerecord-datepick"
  spec.license       = "MIT"
  spec.files += Dir['lib/**/*']
  spec.require_path = ["lib"]

  spec.add_dependency "activerecord", '>= 4.2'
end