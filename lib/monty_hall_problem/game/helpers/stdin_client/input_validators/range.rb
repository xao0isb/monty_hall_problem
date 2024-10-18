# frozen_string_literal: true

class MontyHallProblem::Game::Helpers::StdinClient::InputValidators::Range
  def initialize(min_number, max_number)
    @range = (min_number..max_number)
  end

  def validate!(input)
    validate_on_type!(input)

    input = input.to_i

    raise MontyHallProblem::Game::Helpers::StdinClient::Errors::ValueIsOutOfRange unless @range.include?(input)

    true
  end

  private

  def validate_on_type!(input)
    can_be_coerce_to_int = (input != "0") == (input.to_i != 0) # XNOR operation
    raise MontyHallProblem::Game::Helpers::StdinClient::Errors::UnexpectedType unless can_be_coerce_to_int
  end
end
