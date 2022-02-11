# frozen_string_literal: true

class Bowling
  STRIKE = 'X'
  SPARE = '/'

  def initialize(rolls: '')
    @rolls = rolls
  end

  def total_score
    frames = @rolls.split(' ')

    first_frame = frames[0]
    second_frame = frames[1]

    if first_frame.include?(STRIKE) && !second_frame
      10
    elsif first_frame.include?(SPARE) && !second_frame
      10
    elsif first_frame.include?(STRIKE)
      10 + second_frame.to_i.digits.sum + second_frame.to_i.digits.sum
    else
      frames.map(&:to_i).map(&:digits).reduce(0) { |score, frame| score + frame.sum }
    end
  end
end
