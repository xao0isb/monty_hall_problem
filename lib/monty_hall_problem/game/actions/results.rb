# frozen_string_literal: true

class MontyHallProblem::Game::Actions::Results < MontyHallProblem::Game::Action
  def self.play(state)
    win_door = MontyHallProblem::Game.doors.find(&:winnable?)

    if state[:choice] == win_door.number
      puts "И вы выбрали правильную дверь! Автомобиль ваш!"
    else
      puts "Увы! Но ваш выбор неверен. Автомобиль остается у нас, а к вам переходит коза."
    end
  end
end
