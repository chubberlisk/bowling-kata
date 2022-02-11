# frozen_string_literal: true

class Bowling
  STRIKE = 'X'

  def initialize(rolls: '')
    @rolls = rolls
  end

  def total_score
    frames = @rolls.split(' ')

    if frames.length == 2 && (!@rolls.include?(STRIKE) || !@rolls.include?('/'))
      score = 0

      frames.each do |frame|
        score += frame.to_i.digits.sum
      end

      return score
    end

    return 10 if @rolls == STRIKE || @rolls.include?('/')

    @rolls.to_i.digits.sum
  end
end
