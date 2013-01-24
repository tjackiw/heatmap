# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'jeweler'

$:.push File.expand_path("../lib", __FILE__)
require "heatmap/version"

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name          = "heatmap"
  gem.version       = Heatmap::VERSION
  gem.authors       = ["Thiago Jackiw"]
  gem.email         = "tjackiw@gmail.com"
  gem.homepage      = "http://github.com/tjackiw/heatmap"
  gem.license       = "MIT"
  gem.summary       = %Q{ Heatmap generator in Ruby }
  gem.description   = %Q{ Simple Heatmap generator in Ruby. (Requires ImageMagick) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
