require 'playing_cards/deck'
require 'playing_cards/card'

module BlackjackCards
  # Decribes a blackjack deck vs a normal one
  class Deck < PlayingCards::Deck

  private

    def base_rank_values
      {
        ace: 11, two: 2, three: 3, four: 4, five: 5,
        six: 6, seven: 7, eight: 8, nine: 9, ten: 10,
        jack: 10, queen: 10, king: 10
      }
    end

    def all_ranks
      base_rank_values.map {|rank, value| PlayingCards::Rank.new(rank, value) }
    end
  end
end
