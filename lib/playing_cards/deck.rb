require 'playing_cards/card'

module PlayingCards
  # Describes a normal set of cards
  class Deck
    SUITS = %w(hearts clubs spades diamonds)
    RANKS = %w(ace two three four five six seven
               eight nine ten jack queen king)

    attr_reader :cards

    def initialize(shoe_size=1)
      @cards = build_deck*shoe_size
    end

  private

    def build_deck
      all_ranks.flat_map {|rank| SUITS.flat_map {|suit| Card.new(rank,suit) } }
    end

    def all_ranks
      RANKS.map.with_index {|rank, value| Rank.new(rank, value) }
    end

  end
end
