# frozen_string_literal: true

class MontyHallProblem::Game::Actions::DoorOpening < MontyHallProblem::Game::Action
  def self.play(state)
    opening_door = MontyHallProblem::Game.doors.shuffle.find do |door|
      (door.number != state[:choice]) && !door.winnable?
    end

    puts "Ха-ха! Я знаю где находится автомобиль, а где козы! Специально для вас я открою дверь под номером #{opening_door.number}, где находится коза!" # rubocop:disable Layout/LineLength

    state[:opened_door] = opening_door
  end
end
