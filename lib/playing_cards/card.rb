require 'values'

require 'playing_cards/rank'

module PlayingCards
  class Card < Value.new(:rank, :suit)
    def suit
      (@suit || 'naked').to_sym
    end

    def to_s
      "#{rank.to_s} of #{suit.to_s.capitalize}"
    end
  end
end
