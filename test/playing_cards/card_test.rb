require 'minitest_helper'
require 'playing_cards/card'

include PlayingCards

describe Card do
  describe '#suit' do
    it 'must return a symbol' do
      Card.new('RANK', 'hearts').suit.must_equal :hearts
    end
  end

  describe '#to_s' do
    subject { Card.new('RANK', :hearts) }
    it 'must return "RANK of SUIT"' do
      subject.to_s.must_equal 'RANK of Hearts'
    end
  end
end
