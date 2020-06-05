require './lib/board.rb'
require './lib/logic.rb'

describe Board do
#   describe "#display_board" do
#     it "Returns the display of board" do
#       board = Board.new
#       expect(board.display_board([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eql("  1  |  2  |  3  \n  4  |  5  |  6  \n  7  |  8  |  9  \n ")  
#     end
#     it "Returns the display of Empty board" do
#       board = Board.new
#       expect(board.display_board(['-', '-', '-', '-', '-', '-', '-', '-', '-'])).to eql("  -  |  -  |  -  \n  -  |  -  |  -  \n  -  |  -  |  -  \n ")  
#     end
#   end
  
# end

# describe TicTacToe do
#   describe '#check' do
#     it 'Returns the true and array' do
#       logic = TicTacToe.new
#       expect(logic.check('X',9)).to eql [true, ['-', '-', '-', '-', '-', '-', '-', '-', 'X']]
#     end
#   end7, 8,

#   describe '#draw_status' do
#     it "Returns false if '-' in array" do
#       logic = TicTacToe.new
#       expect(logic.draw_status).to eql(nil)
#     end
#   end
  
  describe "#win_status" do
    it "Return Wins" do
      logic = TicTacToe.new
      expect(logic.win_status(['X','X','X','X','X','X','X','X','X'])).to eql(true)
    end
  end
  
end
