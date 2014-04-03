# PlayingCards

[![Code Climate](https://codeclimate.com/github/thatrubylove/playing_cards.png)](https://codeclimate.com/github/thatrubylove/playing_cards)

This library gives you access to a functional deck of cards, and a deck of blackjack cards.

Decks can be initialized with a shoe_size

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
deck.cards.count #=> 52

# many decks for games that require multiple packs of cards
deck = PlayingCards::Deck.new(12)
deck.cards.count #=> 624
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/playing_cards/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
