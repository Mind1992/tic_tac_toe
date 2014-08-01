require './lib/board'
require './lib/player'

def main_menu
  loop do
    puts "*****WELCOME TO TIC-TAC-TOE*****"
    puts "1: start game"
    puts "9: exit"
    user_input = gets.chomp
    if user_input == "1"
      start_game
    elsif user_input == "9"
      exit
    else
      puts "This is the wrong command"
    end
  end
end

def start_game
  puts "The fun starts now"
  @new_board = Board.new
  @player1 = Player.new('Dude')
  @player2 = Player.new('Chick')
  choose_spaces
end

def board_display
  @board_display = "
    |     |
 7  |  8  |  9
----------------
    |     |
 4  |  5  |  6
----------------
    |     |
 1  |  2  |  3
"
puts @board_display
end

def choose_spaces
  board_display
  loop do
    puts @board_display
    puts "#{@player1.name} pick a space"
    player1_input = gets.chomp.to_i
    @new_board.p1mark_space(player1_input)
    @board_display.sub! player1_input.to_s, "X"
    if @new_board.winning_combos == "game over"
      puts "#{@player1.name} WINS!"
      main_menu
    end
    puts "#{@player2.name} pick a space"
    player2_input = gets.chomp.to_i
    @new_board.p2mark_space(player2_input)
    @board_display.sub! player2_input.to_s, "O"
    if @new_board.winning_combos == "game over"
      puts "#{@player2.name} WINS!"
      main_menu
    end
  end
end

main_menu
