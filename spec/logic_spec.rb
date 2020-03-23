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

  describe "#player_win_state" do
    it 'should return false' do
      actual = subject.player_win_state
      expect(actual).to be(false)
    end
  end

  describe "#player_win_cases" do
    let(:player_labelz){'X'}
    let(:arrey){[['X', 'X', 'X'], [4, 5, 6], [7, 8, 9]]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey)
      expect(actual).to be(true)
    end

    let(:arrey_3){[[1, 2, 3], ['X', 'X', 'X'], [7, 8, 9]]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_3)
      expect(actual).to be(true)
    end

    let(:arrey_4){[[1, 2, 3], [4, 5, 6],['X', 'X', 'X']]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_4)
      expect(actual).to be(true)
    end

    let(:arrey_5){[['X', 2, 3], ['X', 5, 6],['X', 8, 9]]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_5)
      expect(actual).to be(true)
    end

    let(:arrey_6){[[1, 'X', 3], [1, 'X', 6],[7, 'X', 9]]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_6)
      expect(actual).to be(true)
    end

    let(:arrey_7){[[1, 2, 'X'], [4, 5, 'X'],[7, 8, 'X']]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_7)
      expect(actual).to be(true)
    end

    let(:arrey_8){[['X', 2, 3], [4, 'X', 6],[7, 8, 'X']]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_8)
      expect(actual).to be(true)
    end

    let(:arrey_9){[[1, 2, 'X'], [4, 'X', 6],['X', 8, 9]]}
    it 'should return TRUE if a win case is met' do
      actual = subject.player_win_cases(player_labelz, arrey_9)
      expect(actual).to be(true)
    end    

    let(:player_label_2){'X'}
    let(:arrey_2){[['X', 2, 'X'], [4, 5, 6], [7, 8, 9]]}
    it 'should return FALSE if a win case is NOT met' do
      actual = subject.player_win_cases(player_label_2, arrey_2)
      expect(actual).to be(false)
    end
  end
end