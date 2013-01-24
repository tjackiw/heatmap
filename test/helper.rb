require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'heatmap'

class Test::Unit::TestCase
  
  def teardown
    File.unlink(example_png_file) if File.exists?(example_png_file)
  end
  
  def example_png_file
    File.dirname(__FILE__) + "/example.png"
  end
  
end
