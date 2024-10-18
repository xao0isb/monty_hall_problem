# frozen_string_literal: true

module MontyHallProblem::Game::Helpers::StdinClient::Errors
  class Error < StandardError; end

  class UnexpectedType < Error; end
  class UnexpectedValue < Error; end
  class ValueIsOutOfRange < Error; end
end
