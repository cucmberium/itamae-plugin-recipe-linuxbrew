# Itamae::Plugin::Recipe::Linuxbrew

[Itamae](https://github.com/ryotarai/itamae) plugin to install linuxbrew.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-linuxbrew'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-linuxbrew

## Usage

### Recipe

```ruby
# your recipe
iclude_recipe "linuxbrew::install"
```

### Node

Use this with itamae -y node.yml

NOTE: **Required** `node[:linuxbrew][:user]`

```yaml
# node.yml
linuxbrew:
  # install user
  user: user

  # specify scheme to use in git clone, optional (default: https)
  scheme: https

  # brew tap repo
  taps:
    - homebrew/core
    - homebrew/science
    - linuxbrew/xorg
    - linuxbrew/dupes

  # brew install package_name
  packages:
    - git
    - gcc
    - imagemagick
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iyuuya/itamae-plugin-recipe-linuxbrew.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

