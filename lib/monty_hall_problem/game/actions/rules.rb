# frozen_string_literal: true

class MontyHallProblem::Game::Actions::Rules < MontyHallProblem::Game::Action
  def self.play(_)
    puts "Вам нужно будет выбрать одну из трех дверей! За одной из них будет автомобиль, а за двумя другими коза!"
  end
end
