# heatmap [![Build Status](https://secure.travis-ci.org/tjackiw/heatmap.png)](https://travis-ci.org/tjackiw/heatmap)

Simple Heatmap generator for Ruby. 

## Prerequisites

This gem requires *ImageMagick* to run. You can easily install it with *homebrew*:

```shell
brew update && brew install ImageMagick
```

## Install

Add this line to your Gemfile:

```ruby
gem 'heatmap'
```

And then execute:

```ruby
bundle install
```

Or install it yourself:

```ruby
gem install heatmap
```

## Usage

Using `heatmap` is as easy as 1,2,3:

**1)** Create a new *Map* object:

```ruby
map = Heatmap.new #same as Heatmap::Map.new
```

**2)** Add *Area* objects to the map:

```ruby
map << Heatmap::Area.new(x, y, alpha)
```

**3)** Output the generated heatmap:

```ruby
map.output(filename)
```

## Example

Examples are included in the *examples* directory.


## Contributing to heatmap

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history.

## Authors

* Thiago Jackiw: [@tjackiw](http://twitter.com/tjackiw)

## Copyright

Copyright (c) 2013 Thiago Jackiw. See LICENSE.txt for further details.