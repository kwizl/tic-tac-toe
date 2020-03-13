puts 'Tic Tac Toe Game!'
array_canvas = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts
puts 'Game Board'
array_canvas.each do |i|
  print i
  puts
end​
print 'Enter name for Player One: '
player_one = gets.chomp
puts
print 'Enter name for Player Two: '
player_two = gets.chomp
​
count = 0
​
game_on = true
while game_on
  print "#{player_one} its your turn"
  puts
  player_one_choice = gets.chomp
  if player_one_choice.to_i.positive? && player_one_choice.to_i < 10
    array_canvas.each do |i|
      (i.length).times do |x|
        if Integer(player_one_choice) == i[x]
          i[x] = 'X'
        end
      end
    end
    
    if (array_canvas[0][0] == 'X' && array_canvas[0][1] == 'X' && array_canvas[0][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[1][0] == 'X' && array_canvas[1][1] == 'X' && array_canvas[1][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[2][0] == 'X' && array_canvas[2][1] == 'X' && array_canvas[2][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[0][0] == 'X' && array_canvas[1][1] == 'X' && array_canvas[2][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[2][0] == 'X' && array_canvas[1][1] == 'X' && array_canvas[0][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[0][0] == 'X' && array_canvas[1][0] == 'X' && array_canvas[2][0] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[0][1] == 'X' && array_canvas[1][1] == 'X' && array_canvas[2][1] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    elsif (array_canvas[0][2] == 'X' && array_canvas[1][2] == 'X' && array_canvas[2][2] == 'X')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_one} has won!"
      return
    end
​
    array_canvas.each do |i|
      print i
      puts
    end
    count += 1
  end
​
  if count == 9
    game_on = false
    break
  end
​
  print "#{player_two} its your turn"
  puts
  player_two_choice = gets.chomp
  if player_two_choice.to_i.positive? && player_two_choice.to_i < 10    
    array_canvas.each do |i|
      (i.length).times do |x|
        if Integer(player_two_choice) == i[x]
          i[x] = 'O'
        end
      end
    end
    if (array_canvas[0][0] == 'O' && array_canvas[0][1] == 'O' && array_canvas[0][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[1][0] == 'O' && array_canvas[1][1] == 'O' && array_canvas[1][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[2][0] == 'O' && array_canvas[2][1] == 'O' && array_canvas[2][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[0][0] == 'O' && array_canvas[1][1] == 'O' && array_canvas[2][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[2][0] == 'O' && array_canvas[1][1] == 'O' && array_canvas[0][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[0][0] == 'O' && array_canvas[1][0] == 'O' && array_canvas[2][0] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[0][1] == 'O' && array_canvas[1][1] == 'O' && array_canvas[2][1] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    elsif (array_canvas[0][2] == 'O' && array_canvas[1][2] == 'O' && array_canvas[2][2] == 'O')
      game_on = false
      array_canvas.each do |i|
        print i
        puts
      end
      puts "#{player_two} has won!"
      return
    end
​
    array_canvas.each do |i|
      print i
      puts
    end
    count += 1
  end
end
​
puts "Its a draw"
