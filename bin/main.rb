#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/logic.rb'

puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
puts 'You have to select the number for your desire box as the sample is given below'
board = Board.new
sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts board.display_board(sample_array)
puts
print 'First Player : Please Enter Your Name: '
first_player = gets.chomp
first_player = 'PLayer : 1 ' if first_player.empty?
print 'Second Player : Please Enter Your Name: '
second_player = gets.chomp
second_player = 'PLayer : 2 ' if second_player.empty?
puts "#{first_player} has symbol X and #{second_player} has been assigned symbol O"
puts
logic = TicTacToe.new
my_array = []
puts 'Yous game starts Now'
puts 'Your Board is given below'
puts board.display_board
puts
current_player = first_player
game = true
while game
  puts 'To Acquire your box you have to select the number from 1 - 9'
  print "#{current_player} please select your box: "
  position = gets.chomp.to_i
  symbol =
    if current_player == first_player
      'X'
    else
      'O'
    end
  game_check = logic.check(symbol, position)
  if game_check[0]
    puts board.display_board(game_check[1])
    if logic.win_status == true
      puts "#{current_player} Wins"
      game = false
    elsif logic.draw_status == true
      puts 'Game Draw. Try again!!!'
      game = false
    end
    current_player =
      if current_player == first_player
        second_player
      else
        first_player
      end
  else
    puts game_check[1]
  end
  puts board.display_board(my_array)
end
