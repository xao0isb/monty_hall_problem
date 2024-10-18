# frozen_string_literal: true

class MontyHallProblem::Game::Door
  def initialize(number, is_winnable: false)
    @number = number
    @is_winnable = is_winnable
  end

  attr_reader :number

  def winnable?
    @is_winnable
  end
end
