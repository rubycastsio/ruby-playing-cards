require 'values'

module PlayingCards
  # Immutable rank for cards
  class Rank < Value.new(:rank, :value)
    def to_s
      rank.to_s.capitalize
    end
  end
end
