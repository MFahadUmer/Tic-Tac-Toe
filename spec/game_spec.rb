require './lib/board.rb'
require './lib/logic.rb'

describe Board do
  describe '#display_board' do
    it 'Returns the display of board' do
      board = Board.new
      expect(board.display_board([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eql("  1  |  2  |  3  \n  4  |  5  |  6  \n  7  |  8  |  9  \n ")
    end
    it 'Returns the display of Empty board' do
      board = Board.new
      expect(board.display_board(['-', '-', '-', '-', '-', '-', '-', '-', '-'])).to eql("  -  |  -  |  -  \n  -  |  -  |  -  \n  -  |  -  |  -  \n ")
    end
  end
end

describe TicTacToe do
  describe '#check' do
    it 'Returns the true and array' do
      logic = TicTacToe.new
      expect(logic.check('X', 9)).to eql [true, ['-', '-', '-', '-', '-', '-', '-', '-', 'X']]
    end
    it 'Returns the False and error Message Invalid Choice' do
      logic = TicTacToe.new
      expect(logic.check('X', 10)).to eql [false, 'Invalid Choice. Please Select 1 - 9 ']
    end
  end

  describe '#draw_status' do
    it "Returns false if '-' in array" do
      logic = TicTacToe.new
      expect(logic.draw_status).to eql(false)
    end
  end

  describe '#win_status' do
    it "Return true for X '1 2 3' " do
      logic = TicTacToe.new
      expect(logic.win_status(['X', 'X', 'X', '-', '-', '-', '-', '-', '-'], 'X')).to be(true)
    end
    it "Return true for X '4 5 6'" do
      logic = TicTacToe.new
      expect(logic.win_status(['-', '-', '-', 'X', 'X', 'X', '-', '-', '-'], 'X')).to be(true)
    end
    it "Return true for X '1 5 9' " do
      logic = TicTacToe.new
      expect(logic.win_status(['X', '-', '-', '-', 'X', '-', '-', '-', 'X'], 'X')).to be(true)
    end
    it "Return true for X '3 5 7'" do
      logic = TicTacToe.new
      expect(logic.win_status(['-', '-', 'X', '-', 'X', '-', 'X', '-', '-'], 'X')).to be(true)
    end
    it "Return true for O '1 2 3'" do
      logic = TicTacToe.new
      expect(logic.win_status(['-', '-', '-', 'O', 'O', 'O', '-', '-', '-'], 'O')).to be(true)
    end
    it "Return true for O '4 5 6'" do
      logic = TicTacToe.new
      expect(logic.win_status(['O', 'O', 'O', '-', '-', '-', '-', '-', '-'], 'O')).to be(true)
    end
    it "Return true for O '1 5 9' " do
      logic = TicTacToe.new
      expect(logic.win_status(['O', '-', '-', '-', 'O', '-', '-', '-', 'O'], 'O')).to be(true)
    end
    it "Return true for O '3 5 7'" do
      logic = TicTacToe.new
      expect(logic.win_status(['-', '-', 'O', '-', 'O', '-', 'O', '-', '-'], 'O')).to be(true)
    end
    it 'Return false' do
      logic = TicTacToe.new
      expect(logic.win_status(['X', 'X', 'X', '-', '-', '-', '-', '-', '-'], 'O')).to be(false)
    end
    it 'Return false' do
      logic = TicTacToe.new
      expect(logic.win_status(['O', 'O', 'O', '-', '-', '-', '-', '-', '-'], 'X')).to be(false)
    end
  end
end
