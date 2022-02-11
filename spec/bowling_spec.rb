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

    it 'returns 10 for a spare' do
      bowling = Bowling.new(rolls: '4/')

      expect(bowling.total_score).to eq(10)
    end
  end

  context 'when two frames' do
    it 'adds all pins knocked down for frames without all pins knocked down' do
      bowling = Bowling.new(rolls: '81 34')

      expect(bowling.total_score).to eq(16)
    end

    it 'adds 10 to score for previous strike' do
      bowling = Bowling.new(rolls: 'X 34')

      expect(bowling.total_score).to eq(24)
    end

    it 'adds 10 and pins knocked down for first roll of second frame to score for previous spare' do
      bowling = Bowling.new(rolls: '1/ 34')

      expect(bowling.total_score).to eq(20)
    end
  end
end
