require 'playing_cards/card'

module PlayingCards
  class Deck

    attr_reader :cards

    def initialize(shoe_size=1)
      @cards = build_deck*shoe_size
    end

  private

    def build_deck
      ranks = %w(ace two three four five six seven eight nine ten jack queen king)

      all_ranks = ranks.map.with_index {|rank, value| Rank.new(rank, value) }

      all_ranks.flat_map {|rank| %w(hearts clubs spades diamonds).flat_map {|suit| Card.new(rank,suit) } }
    end

  end
end
