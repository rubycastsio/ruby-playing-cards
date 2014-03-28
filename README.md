# PlayingCards

This the companion code for a series of blog posts starting with [part 2](http://rubylove.io/design_patterns/2014/03/24/a-faux-o-deck-of-cards) on [my ruby blog](http://www.rubylove.io) about proper gem/object contruction using good practices.

The idea here is not mutation, rather a functional deck of cards. You get back an arry and you can do what you like with that array, shuffle, ect.

Currently the cards have "basic" values. The are A:0-K:12. I will be soon showing a way to create a game specific deck of cards using this one as a base using inheritance.... Stay tuned!

## Installation

Add this line to your application's Gemfile:

    gem 'playing_cards'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install playing_cards

## Usage

```ruby
require 'playing_cards'

# normal 52 card deck
deck = PlayingCards::Deck.new

# many decks for games that require multiple packs of cards
deck = PlayingCards::Deck.new(12)
deck.count #=> 624
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/playing_cards/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
