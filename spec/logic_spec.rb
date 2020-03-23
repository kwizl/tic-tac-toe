require './lib/logic.rb'

RSpec.describe Logic do
  describe "#validate_player_choice" do
    let(:value_one) { 1 }
    it 'Checks the validity of user input between 1 and 9' do
      actual = subject.validate_player_choice(value_one)
      expect(actual).to be(true)
    end

    let(:value_two) { -1 }
    it 'Checks the validity of user input, when its less than 0' do
      actual = subject.validate_player_choice(value_two)
      expect(actual).to be(false)
    end

    let(:value_three) { 10 }
    it 'Checks the validity of user input when its more than 9' do
      actual = subject.validate_player_choice(value_three)
      expect(actual).to be(false)
    end
  end
end