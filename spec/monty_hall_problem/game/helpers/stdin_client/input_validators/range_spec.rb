# frozen_string_literal: true

RSpec.describe MontyHallProblem::Game::Helpers::StdinClient::InputValidators::Range do
  context "when input is valid" do
    it "returns true" do
      validator = described_class.new(1, 10)

      expect(validator.validate!("1")).to be(true)
      expect(validator.validate!("5")).to be(true)
      expect(validator.validate!("10")).to be(true)
    end
  end

  context "when input is invalid" do
    context "when input cannot be coerce to int" do
      it "raises error" do
        validator = described_class.new(1, 10)

        expect { validator.validate!("abc") }.to raise_error(MontyHallProblem::Game::Helpers::StdinClient::Errors::Error)
      end
    end

    context "when input is out of range" do
      it "raises error" do
        validator = described_class.new(1, 10)

        expect { validator.validate!("11") }.to raise_error(MontyHallProblem::Game::Helpers::StdinClient::Errors::Error)
      end
    end
  end
end
