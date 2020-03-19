#!/usr/bin/env ruby
require './lib/canvas.rb'
require './lib/player.rb'
require './lib/logic.rb'

canvas = Canvas.new
logic = Logic.new

@player_one = Player.new
@player_two = Player.new
@player_name = Player.new

@current_player = @player_one
current_player_number = 0

@arr = canvas.array_canvas

count = 0

game_on = true

puts 'Tic Tac Toe Game!'

puts
puts 'Game Board'
def print_game_board
  @arr.each do |p|
    p.length.times do |x|
      if x == 1
        print "| #{p[x]} |"
      else
        print " #{p[x]} "
      end
    end
    puts
  end
end
print_game_board

print 'Enter name for Player One: '
@player_one.name = gets.chomp
@player_one.name = @player_one.name.capitalize
@player_name.name = @player_one.name

@player_one.name = 'Player 1' if @player_one.name.empty?
puts "#{@player_one.name} Has Been Chosen" if @player_two.name == @player_one.name
puts "#{@player_one.name} You Will play as X"
puts '--------------------------------------'

print 'Enter name for Player Two: '
@player_two.name = gets.chomp
@player_two.name = @player_two.name.capitalize

@player_two.name = 'Player 2' if @player_two.name.empty?
if @player_two.name == @player_one.name
  puts "#{@player_two.name} Has Been Chosen"
  @player_two.name = 'Player Two'
end
puts "#{@player_two.name} You Will play as O"
puts '--------------------------------------'

while game_on
  puts "#{@player_name.name} its your turn"
  print_game_board
  print 'Choose: '
  @current_player.choice = gets.chomp
  if logic.validate_player_choice(@current_player.choice)
    logic.player_both(Integer(@current_player.choice), @arr, current_player_number)
    puts 'Number chosen' if logic.check_player[current_player_number] == false
    logic.check_player[current_player_number] == false ? next : true

    win_cases_symbol = @current_player == @player_one ? 'X' : 'O'
    if logic.player_win_cases(win_cases_symbol, @arr)
      print_game_board
      logic.player_win_state
      puts "#{@player_name.name} Has Won! Game Over!"
      return
    end
    count += 1
  elsif !logic.validate_player_choice(@current_player.choice)
    puts 'Enter a valid number'
    next
  end

  if count == 9
    game_on = false
    break
  end
  print_game_board

  current_player_number = @current_player == @player_one ? 1 : 0
  @current_player = @current_player == @player_one ? @player_two : @player_one
  @player_name.name = @current_player.name == @player_one.name ? @player_one.name : @player_two.name
end
puts 'Its a draw!'
