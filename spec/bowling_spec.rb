# frozen_string_literal: true

require 'bowling'

describe Bowling do
  context 'when a single frame' do
    it 'returns 10 for a strike' do
      bowling = Bowling.new(rolls: 'X')

      expect(bowling.total_score).to eq(10)
    end
  end
end
