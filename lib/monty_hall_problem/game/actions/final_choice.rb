# frozen_string_literal: true

class MontyHallProblem::Game::Actions::FinalChoice < MontyHallProblem::Game::Action
  def self.play(state)
    last_door = MontyHallProblem::Game.doors.find do |door|
      (door.number != state[:choice]) && (door.number != state[:opened_door].number)
    end

    puts "Не желаете ли вы изменить свой выбор и выбрать дверь под номером #{last_door.number}? [#{MontyHallProblem::Game::TextConsts::Answers::YES}/#{MontyHallProblem::Game::TextConsts::Answers::NO}]" # rubocop:disable Layout/LineLength

    answer = MontyHallProblem::Game::Helpers::StdinClient.input(
      MontyHallProblem::Game::Helpers::StdinClient::InputValidators::YesOrNo.new
    )
    state[:choice] = last_door.number if answer == MontyHallProblem::Game::TextConsts::Answers::YES
  end
end
