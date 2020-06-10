#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/logic.rb'
require_relative '../lib/player.rb'

puts 'Welcome to Tic Tac TOE'
puts 'Please Read All Rules Carefully'
puts 'You have to select the number for your desire box as the sample is given below'
board = Board.new
sample_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts board.display_board(sample_array)
puts
player = Player.new
names_array = []
count = 0
while count < 2
  print "Player #{count + 1} : Please Enter Your Name: "
  player_name = gets.chomp
  player_empty = player.empty_name(player_name)
  if player_empty.nil?
    player_name = player.player_name(player_name)
    if player_name[0] == true
      names_array[count] = player_name[1]
      count += 1
    else
      puts player_name[1]
    end
  else
    puts player_empty
  end
end
puts "#{names_array[0]} has symbol X and #{names_array[1]} has been assigned symbol O"
puts
logic = TicTacToe.new
my_array = []
puts 'Yous game starts Now'
puts 'Your Board is given below'
puts board.display_board
puts
current_player = names_array[0]
game = true
while game
  puts 'To Acquire your box you have to select the number from 1 - 9'
  print "#{current_player} please select your box: "
  position = gets.chomp.to_i
  symbol =
    if current_player == names_array[0]
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
      if current_player == names_array[0]
        names_array[1]
      else
        names_array[0]
      end
  else
    puts game_check[1]
  end
  puts board.display_board(my_array)
end
