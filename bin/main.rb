#!/usr/bin/env ruby
require './lib/canvas.rb'
require './lib/player.rb'
require './lib/logic.rb'

canvas = Canvas.new
logic = Logic.new

player_one = Player.new
player_two = Player.new

arr = canvas.array_canvas

count = 0

game_on = true

one_name = 'Player One'
two_name = 'Player Two'

puts 'Tic Tac Toe Game!'

puts
puts 'Game Board'
arr.each do |i|
  print i
  puts
end

while game_on
  print "#{one_name} its your turn"
  puts

  player_one.choice = gets.chomp
  if logic.validate_player_choice(player_one.choice)
    logic.player_first(Integer(player_one.choice), arr)
    puts 'Number chosen' if logic.check_one == false
    logic.check_one == false ? next : true

    if logic.player_win_cases('X', arr)
      arr.each do |i|
        print i
        puts
      end
      logic.player_win_state
      puts "#{one_name} Has Won! Game Over!"
      return
    end
    count += 1
  elsif !logic.validate_player_choice(player_one.choice)
    puts 'Enter a valid number'
    next
  end

  if count == 9
    game_on = false
    break
  end
  arr.each do |i|
    print i
    puts
  end

  game = true
  while game
    print "#{two_name} its your turn"
    puts
    player_two.choice = gets.chomp
    if logic.validate_player_choice(player_two.choice)
      logic.player_second(Integer(player_two.choice), arr)
      puts 'Number chosen' if logic.check_two == false
      logic.check_two == false ? next : true

      if logic.player_win_cases('O', arr)
        arr.each do |i|
          print i
          puts
        end
        logic.player_win_state
        puts "#{two_name} Has Won! Game Over!"
        return
      end
      count += 1
      game = false
    elsif !logic.validate_player_choice(player_two.choice)
      puts 'Enter a valid number'
      next
    end
  end

  arr.each do |i|
    print i
    puts
  end
end
puts 'Its a draw!'
