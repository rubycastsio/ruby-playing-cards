require 'minitest_helper'
require 'playing_cards/rank'

include PlayingCards

describe Rank do
  describe '#to_s' do
    describe 'when rank is already formatted as a string' do
      subject { Rank.new('Ace', 11).to_s }
      it { subject.must_equal 'Ace' }
    end

    describe 'when rank is a lower case string' do
      subject { Rank.new('ace', 11).to_s }
      it { subject.must_equal 'Ace' }
    end

    describe 'when rank is a symbol' do
      subject { Rank.new(:ace, 11).to_s }
      it { subject.must_equal 'Ace' }
    end
  end
end
