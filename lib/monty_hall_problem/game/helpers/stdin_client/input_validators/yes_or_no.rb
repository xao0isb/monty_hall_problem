# frozen_string_literal: true

class MontyHallProblem::Game::Helpers::StdinClient::InputValidators::YesOrNo
  def validate!(input)
    yes = MontyHallProblem::Game::TextConsts::Answers::YES
    no = MontyHallProblem::Game::TextConsts::Answers::NO

    raise MontyHallProblem::Game::Helpers::StdinClient::Errors::UnexpectedValue if input != yes && input != no

    true
  end
end
