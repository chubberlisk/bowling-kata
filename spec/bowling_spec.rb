# frozen_string_literal: true

require 'bowling'

describe Bowling do
  context 'when a single frame' do
    it 'returns 10 for a strike' do
      bowling = Bowling.new(rolls: 'X')

      expect(bowling.total_score).to eq(10)
    end

    it 'adds pins knocked down for frame without all pins knocked down' do
      bowling = Bowling.new(rolls: '45')

      expect(bowling.total_score).to eq(9)
    end
  end
end
