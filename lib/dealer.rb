require 'playing_cards'

# responsible for manipulating cards
module PlayingCards::Dealer
  extend self

  def shuffle_deck(deck)
    # Array Built-in Knuth-Fisher-Yates shuffle algorithm
    deck.shuffle
  end
end
