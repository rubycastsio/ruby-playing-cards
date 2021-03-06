require 'minitest_helper'
require 'blackjack_cards/deck'

describe "BlackjackCards::Deck" do
  describe '#initialize' do
    describe 'initialized without a shoe-size' do
      subject { BlackjackCards::Deck.new }
      it 'must be composed of 52 cards' do
        subject.cards.count.must_equal 52
      end
    end

    describe 'initialized with a shoe-size of 2' do
      subject { BlackjackCards::Deck.new(2) }
      it 'must be composed of 104 cards' do
        subject.cards.count.must_equal 104
      end
    end

    describe 'initialized with a shoe-size of 10' do
      subject { BlackjackCards::Deck.new(10) }
      it 'must be composed of 520 cards' do
        subject.cards.count.must_equal 520
      end
    end
  end

  describe 'a generated deck' do
    subject { BlackjackCards::Deck.new }

    it 'must have 13 cards of hearts' do
      only_hearts = ->(card) { card.suit == :hearts }
      subject.cards.select(&only_hearts).count.must_equal 13
    end

    it 'must have 13 cards of spades' do
      only_spades = ->(card) { card.suit == :spades }
      subject.cards.select(&only_spades).count.must_equal 13
    end

    it 'must have 13 cards of diamonds' do
      only_diamonds = ->(card) { card.suit == :diamonds }
      subject.cards.select(&only_diamonds).count.must_equal 13
    end

    it 'must have 13 cards of clubs' do
      only_clubs = ->(card) { card.suit == :clubs }
      subject.cards.select(&only_clubs).count.must_equal 13
    end

    it 'must have base ranks of ace..2..king' do
      values = subject.cards.collect { |card| card.rank.to_s }
      values.uniq.must_equal([
        'Ace',  'Two',    'Three', 'Four', 'Five',
        'Six',  'Seven',  'Eight', 'Nine', 'Ten',
        'Jack', 'Queen',  'King'])
    end

    it 'aces must be worth 11' do
      aces = subject.cards.select {|card| card.rank.to_s == 'Ace' }
      aces.collect {|card| card.rank.value }.must_equal [11, 11, 11, 11]
    end
  end
end
