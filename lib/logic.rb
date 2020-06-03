class TicTacToe
  attr_reader :new_array
  attr_reader :win_array
  attr_reader :win_variable

  def initialize
    @win_variable = win_variable
    @new_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
    @win_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [1, 5, 9]]
  end

  def check(symbol, box)
    @symbol = symbol
    return_array = [true]
    box -= 1
    return false, 'Invalid Choice. Please Select 1 - 9 ' if box.negative? || box > 8

    return false, 'Invalid Move. Already Placed ' if @new_array[box] != '-'

    @new_array[box] = @symbol
    return_array[1] = @new_array
    return_array
  end

  def draw_status
    return true unless @new_array.include? '-'
  end

  def win_status
    @win_array.each do |x|
      count = 0
      x.each do |y|
        if @new_array[y - 1] == @symbol
          count += 1
          return true if count == 3
        end
      end
    end
  end
end
