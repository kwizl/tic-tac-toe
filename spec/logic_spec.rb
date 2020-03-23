require './lib/logic.rb'

RSpec.describe Logic do
  describe '#validate_player_choice' do
    let(:value_1) { 1 }
    it 'Should return TRUE if value is between 1 and 9' do
      actual = subject.validate_player_choice(value_1)
      expect(actual).to be(true)
    end

    let(:value_2) { 9 }
    it 'Should return TRUE if value is between 1 and 9' do
      actual = subject.validate_player_choice(value_2)
      expect(actual).to be(true)
    end

    let(:value_3) { 0 }
    it 'Should return FALSE if value is less than 1' do
      actual = subject.validate_player_choice(value_3)
      expect(actual).to be(false)
    end

    let(:value_4) { -1 }
    it 'Should return FALSE if value is -1' do
      actual = subject.validate_player_choice(value_4)
      expect(actual).to be(false)
    end

    let(:value_5) { 10 }
    it 'Should return FALSE if value is more than 9' do
      actual = subject.validate_player_choice(value_5)
      expect(actual).to be(false)
    end
  end
  describe '#player_win_state' do
    it 'Should return false' do
      actual = subject.player_win_state
      expect(actual).to be(false)
    end
  end
  describe '#player_win_cases' do
    let(:player_labelz) { 'X' }
    let(:arrey) { [%w[X X X], [4, 5, 6], [7, 8, 9]] }
    it 'Should return TRUE if a win case [1, 2, 3] is met' do
      actual = subject.player_win_cases(player_labelz, arrey)
      expect(actual).to be(true)
    end

    let(:arrey_3) { [[1, 2, 3], %w[X X X], [7, 8, 9]] }
    it 'Should return TRUE if a win case [4, 5, 6] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_3)
      expect(actual).to be(true)
    end

    let(:arrey_4) { [[1, 2, 3], [4, 5, 6], %w[X X X]] }
    it 'Should return TRUE if a win case [7, 8, 9] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_4)
      expect(actual).to be(true)
    end

    let(:arrey_5) { [['X', 2, 3], ['X', 5, 6], ['X', 8, 9]] }
    it 'Should return TRUE if a win case [1, 4, 7] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_5)
      expect(actual).to be(true)
    end

    let(:arrey_6) { [[1, 'X', 3], [4, 'X', 6], [7, 'X', 9]] }
    it 'Should return TRUE if a win case [2, 5, 8] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_6)
      expect(actual).to be(true)
    end

    let(:arrey_7) { [[1, 2, 'X'], [4, 5, 'X'], [7, 8, 'X']] }
    it 'Should return TRUE if a win case [3, 6, 9] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_7)
      expect(actual).to be(true)
    end

    let(:arrey_8) { [['X', 2, 3], [4, 'X', 6], [7, 8, 'X']] }
    it 'Should return TRUE if a win case [1, 5, 9] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_8)
      expect(actual).to be(true)
    end

    let(:arrey_9) { [[1, 2, 'X'], [4, 'X', 6], ['X', 8, 9]] }
    it 'Should return TRUE if a win case [3, 5, 7] is met' do
      actual = subject.player_win_cases(player_labelz, arrey_9)
      expect(actual).to be(true)
    end

    let(:player_label_2) { 'X' }
    let(:arrey_2) { [%w[O X O], %w[O X X], %w[X O X]] }
    it 'Should return FALSE if a DRAW condition is met' do
      actual = subject.player_win_cases(player_label_2, arrey_2)
      expect(actual).to be(false)
    end
  end
  describe '#player_both' do
    let(:arr_player_1_1) { [['X', 2, 3], [4, 5, 6], [7, 8, 9]] }
    it 'Should return FALSE if slot 1 has been chosen' do
      actual = subject.player_both(1, arr_player_1_1, 0)
      expect(actual).to be(false)
    end

    it 'Should return TRUE if slot 2 has NOT been chosen' do
      actual = subject.player_both(2, arr_player_1_1, 0)
      expect(actual).to be(true)
    end

    let(:arr_player_1_2) { [[1, 'X', 3], [4, 5, 6], [7, 8, 9]] }
    it 'Should return FALSE if slot 2 has been chosen' do
      actual = subject.player_both(2, arr_player_1_2, 0)
      expect(actual).to be(false)
    end

    let(:arr_player_1_3) { [[1, 2, 'X'], [4, 5, 6], [7, 8, 9]] }
    it 'Should return FALSE if slot 3 has been chosen' do
      actual = subject.player_both(3, arr_player_1_3, 0)
      expect(actual).to be(false)
    end

    let(:arr_player_1_4) { [[1, 2, 3], ['X', 5, 6], [7, 8, 9]] }
    it 'Should return FALSE if slot 4 has been chosen' do
      actual = subject.player_both(4, arr_player_1_4, 0)
      expect(actual).to be(false)
    end

    let(:arr_player_1_5) { [[1, 2, 3], [4, 'X', 6], [7, 8, 9]] }
    it 'Should return FALSE if slot 5 has been chosen' do
      actual = subject.player_both(5, arr_player_1_5, 0)
      expect(actual).to be(false)
    end

    let(:arr_player_1_6) { [[1, 2, 3], [4, 5, 'O'], [7, 8, 9]] }
    it 'Should return FALSE if slot 6 has been chosen' do
      actual = subject.player_both(6, arr_player_1_6, 1)
      expect(actual).to be(false)
    end

    let(:arr_player_1_7) { [[1, 2, 3], [4, 5, 6], ['O', 8, 9]] }
    it 'Should return FALSE if slot 7 has been chosen' do
      actual = subject.player_both(7, arr_player_1_7, 1)
      expect(actual).to be(false)
    end

    let(:arr_player_1_8) { [[1, 2, 3], [4, 5, 6], [7, 'O', 9]] }
    it 'Should return FALSE if slot 8 has been chosen' do
      actual = subject.player_both(8, arr_player_1_8, 1)
      expect(actual).to be(false)
    end

    let(:arr_player_1_9) { [[1, 2, 3], [4, 5, 6], [7, 8, 'O']] }
    it 'Should return FALSE if slot 9 has been chosen' do
      actual = subject.player_both(9, arr_player_1_9, 0)
      expect(actual).to be(false)
    end
  end
end
