# frozen_string_literal: true

class MontyHallProblem::Game::Actions::Choice < MontyHallProblem::Game::Action
  def self.play(state)
    puts "Введите номер двери:"
    state[:choice] = MontyHallProblem::Game::Helpers::StdinClient.input(
      MontyHallProblem::Game::Helpers::StdinClient::InputValidators::Range.new(1, 3)
    ).to_i
  end
end
