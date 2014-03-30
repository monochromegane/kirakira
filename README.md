# Kirakira

This is Cinch plugin that convert message to rainbow.

## Installation

Add this line to your application's Gemfile:

    gem 'kirakira'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kirakira

## Usage

```ruby
require 'cinch'
require 'kirakira'

bot = Cinch::Bot.new do
  configure do |c|
    # add all required options here
    c.plugins.plugins = [Kirakira]
  end
end

bot.start
```

## Command

```console
k [destination_channel] [message]
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/kirakira/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
