#!/usr/bin/env ruby
p 'Welcome! This is Tic Tac Toe Game. Have Fun!'

p 'Please enter player names'
player_one = gets.chomp
puts "#{player_one} you'll play as X"

puts ' '
p 'Player 2, please enter your name too'
player_two = gets.chomp
puts "#{player_two} you'll play as O"

puts ' '
puts 'Game Board'

canvas = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
canvas.each do |i|
  print i
  puts
end
puts ' '

start_game = true
slots = 0

player_one_choices = []
player_two_choices = []

while start_game
  puts "#{player_one}, choose from any available slot(s), from 1 to 9"
  choice_one = gets.chomp
  state = true
  while state
    if choice_one.to_i.positive? && choice_one.to_i < 10
      player_one_choices.push(choice_one)
      puts "Mark number-slot chosen by #{player_one} as X on the canvas"
      puts ' '

      state = false
      slots += 1
      next
    else
      puts 'Please enter a valid value between 1 and 9'
      break
    end
  end

  state = true
  puts "#{player_two}, choose from any available slot(s), from 1 to 9"
  choice_two = gets.chomp

  while state && slots < 9
    if choice_two.to_i.positive? && choice_two.to_i < 10
      player_two_choices.push(choice_two)
      puts "Mark number-slot chosen by #{player_two} as O on the canvas"
      puts ' '
      state = false
      slots += 1
      next
    else
      puts 'Please enter a valid value between 1 and 9'
      break
    end
  end

  puts "<<<<<slot is #{slots} >>>>"
  slots == 9 ? start_game = false : true
end

puts 'win or draw situation'
