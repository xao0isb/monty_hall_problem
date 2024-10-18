# frozen_string_literal: true

class MontyHallProblem::Game::Actions::Greeting < MontyHallProblem::Game::Action
  def self.play(_)
    puts "Вы попали на игру посвященную парадоксу Монти Холла!"
  end
end
