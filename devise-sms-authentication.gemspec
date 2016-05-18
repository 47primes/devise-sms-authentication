# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise_sms_authentication/version"

Gem::Specification.new do |s|
  s.name = "devise-sms-authentication"
  s.version = DeviseSmsAuthentication::VERSION
  s.authors = ["Mike Bradford"]
  s.email = ["mbradford@47primes.com"]
  s.homepage = "https://github.com/47primes/devise-sms-authentication"
  s.description = %q{SMS authentication strategy for Devise}
  s.summary = %q{Authenticate your Devise/Warden-enabled Rails app using SMS only}
  s.license = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "devise", "~> 4.0"
  s.add_dependency "rake"
end
