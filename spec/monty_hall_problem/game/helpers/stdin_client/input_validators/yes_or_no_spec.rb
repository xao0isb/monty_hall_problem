# frozen_string_literal: true

RSpec.describe MontyHallProblem::Game::Helpers::StdinClient::InputValidators::YesOrNo do
  context "when input is valid" do
    it "returns true on yes" do
      validator = described_class.new

      expect(validator.validate!("да")).to be(true)
      expect(validator.validate!("нет")).to be(true)
    end
  end

  context "when input is invalid" do
    it "raises error" do
      validator = described_class.new

      expect { validator.validate!("abc") }.to raise_error(MontyHallProblem::Game::Helpers::StdinClient::Errors::Error)
    end
  end
end
