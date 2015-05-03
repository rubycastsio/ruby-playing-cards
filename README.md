# Brought to you from the people behind www.rubycasts.io

Check out these awesome [ruby and rails screencasts](https://www.rubycasts.io)! There is 1 15 minute cast released every week as well as either a 2 Minute Ruby or a 2 Minute Rails screencast!

# PlayingCards

[![Code Climate](https://codeclimate.com/github/thatrubylove/playing_cards.png)](https://codeclimate.com/github/thatrubylove/playing_cards)
[![Build Status](https://travis-ci.org/thatrubylove/playing_cards.svg?branch=master)](https://travis-ci.org/thatrubylove/playing_cards)

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
# card rank values are A=0 to K=12

# many decks for games that require multiple packs of cards
deck = PlayingCards::Deck.new(12)
deck.cards.count #=> 624

# blackjack deck with 4 shoes
deck = BlackjackCards::Deck.new(12)
deck.cards.count #=> 208
# aces now have 11 for a rank value
# face cards are 10
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/playing_cards/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
