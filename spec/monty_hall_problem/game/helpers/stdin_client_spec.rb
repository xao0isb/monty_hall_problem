# frozen_string_literal: true

RSpec.describe MontyHallProblem::Game::Helpers::StdinClient do
  let(:fake_validator) do
    Class.new do
      def validate!(input)
        return true if input == "successful validation input"

        raise MontyHallProblem::Game::Helpers::StdinClient::Errors::Error
      end
    end
  end

  before do
    $stdout = StringIO.new # rubocop:disable RSpec/ExpectOutput
  end

  describe ".input" do
    context "when validation is successful" do
      it "returns input" do
        allow($stdin).to receive(:gets).and_return("successful validation input")

        expect(described_class.input(fake_validator.new)).to eq("successful validation input")
      end
    end

    context "when validation is unsuccessful" do
      it "prints message" do
        allow($stdin).to receive(:gets).and_return("unsuccessful", "successful validation input")

        described_class.input(fake_validator.new)

        expect($stdout.string).to eq("Вы ввели неверное значения! Попробуйте еще раз:\n")
      end

      it "asks for input again" do
        allow($stdin).to receive(:gets).and_return("unsuccessful", "successful validation input")

        described_class.input(fake_validator.new)

        # expect($stdin).to receive(:gets).twice - doesn't work
        last_input = $stdin.gets
        expect(last_input).to eq("successful validation input")
      end
    end
  end
end
