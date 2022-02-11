# frozen_string_literal: true

class Bowling
  STRIKE = 'X'

  def initialize(rolls: '')
    @rolls = rolls
  end

  def total_score
    return 10 if @rolls == STRIKE

    @rolls.to_i.digits.sum
  end
end
