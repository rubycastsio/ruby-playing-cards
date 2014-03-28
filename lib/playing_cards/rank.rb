require 'values'

module PlayingCards
  class Rank < Value.new(:rank, :value)
    def to_s
      rank.to_s.capitalize
    end
  end
end
