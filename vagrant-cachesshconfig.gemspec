# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-vagrantcachesshconfig/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-vagrantcachesshconfig'
  spec.version       = VagrantCacheSSHConfig::VERSION
  spec.authors       = ['Tom Kishel']
  spec.email         = ['tkishel@gmail.com']
  spec.license       = 'Apache 2.0'

  spec.summary       = 'A Vagrant Plugin that caches ssh-config data'
  spec.homepage      = 'https://github.com/tkishel/vagrantcachesshconfig'
  spec.description   = ''

  spec.files         = %x[git ls-files].split($/)
  spec.require_paths = ['lib']
end
