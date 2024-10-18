# frozen_string_literal: true

class MontyHallProblem::Game
  class << self
    # winnable_door_number - argument for tests
    def start(winnable_door_number: rand(1..3))
      register_actions

      register_doors(winnable_door_number:)

      play_actions
    end

    def doors
      @doors ||= []
    end

    private

    def register_doors(winnable_door_number:)
      (1..3).each do |i|
        door = MontyHallProblem::Game::Door.new(i, is_winnable: i == winnable_door_number)
        doors.append(door)
      end
    end

    def play_actions
      MontyHallProblem::Game::Action.registry.each_with_object({}) do |action, state|
        action.play(state)
      end

      nil
    end

    # rubocop:disable Lint/Void
    def register_actions
      MontyHallProblem::Game::Actions::Greeting
      MontyHallProblem::Game::Actions::Rules
      MontyHallProblem::Game::Actions::Choice
      MontyHallProblem::Game::Actions::DoorOpening
      MontyHallProblem::Game::Actions::FinalChoice
      MontyHallProblem::Game::Actions::Results
    end
    # rubocop:enable Lint/Void
  end
end
