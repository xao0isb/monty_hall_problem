# frozen_string_literal: true

class MontyHallProblem::Game::Helpers::StdinClient
  class << self
    def input(validator)
      input = $stdin.gets.strip
      validator.validate!(input)

      input
    rescue MontyHallProblem::Game::Helpers::StdinClient::Errors::Error
      puts "Вы ввели неверное значения! Попробуйте еще раз:"
      input(validator)
    end
  end
end
