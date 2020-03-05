#!/usr/bin/env ruby
p 'Welcome! This is Tic Tac Toe Game. Have Fun!'

p 'Please enter player names'
player_one = gets.chomp
puts "#{player_one} you'll play as X"

player_two = gets.chomp
puts "#{player_two} you'll play as O"

start_game = true
slots = 1

player_one_choices = []
player_two_choices = []

while start_game
  puts "#{player_one}, choose from any available slot(s), from 1 to 9"
  choice_one = gets.chomp
  player_one_choices.push(choice_one)
  puts "Mark number-slot chosen by #{player_one} as X on the canvas"
  slots += 1

  puts "#{player_two}, choose from any available slot(s), from 1 to 9"
  choice_two = gets.chomp
  player_two_choices.push(choice_two)
  puts "Mark number-slot chosen by #{player_two} as O on the canvas"
  slots += 1

  puts "<<<<<slot is #{slots} >>>>"
  slots == 9 ? start_game = false : true
end

puts 'win or draw situation'
