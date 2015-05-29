# Pieces

A gem that includes visual components from a Rails Engine into multiple Rails applications, and displays a living styleguide.

## Installation

Include this gem into a Rails Engine that contains your assets:

```ruby
gem 'pieces', git: git@github.com:darioghilardi/pieces.git
```

Then launch the living styleguide with the following command:

```sh
bundle exec styleguide
```

This gem brings livereloading facility to the living styleguide. To use it, run from your engine the following command:

```sh
bundle exec guard init
```

and then run guard using:

```sh
bundle exec guard
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pieces/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
