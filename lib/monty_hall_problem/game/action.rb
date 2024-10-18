# frozen_string_literal: true

class MontyHallProblem::Game::Action
  class << self
    def registry
      @registry ||= []
    end

    def register(action)
      registry.append(action)
    end

    def inherited(action)
      super

      register(action)
    end
  end
end
