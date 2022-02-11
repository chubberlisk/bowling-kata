require "bowling"

describe Bowling do
  it 'return 10 for a strike' do
    bowling = Bowling.new(rolls: "X")

    expect(bowling.total_score).to eq(10)
  end
end
