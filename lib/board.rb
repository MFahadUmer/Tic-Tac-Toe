class Board
  attr_reader :new_array

  def initialize
    @new_array = ['-', '-', '-', '-', '-', '-', '-', '-', '-']
  end

  def display_board(array_my = nil)
    display_array = array_my.nil? ? @new_array : array_my
    count = 0
    result = ' '
    display_array.each do |x|
      result += " #{x} "
      count += 1
      if count == 3
        result += " \n "
        count = 0
      else
        result += ' | '
      end
    end
    result
  end
end
