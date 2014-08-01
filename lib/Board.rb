class Board

  attr_accessor :board

  def initialize
    @board = [['1'],['2'],['3'],['4'],['5'],['6'],['7'],['8'],['9']]
  end

  def p1mark_space(space)
    @board[space-1] = ['X']
  end

  def p2mark_space(space)
    @board[space-1] = ['O']
  end

  def winning_combos
    x_wins = [["X"], ["X"], ["X"]]
    o_wins = [["O"], ["O"], ["O"]]
    if @board.values_at(0,1,2) == x_wins || @board.values_at(0,1,2) == o_wins
      return "game over"
    elsif @board.values_at(0,4,8) == x_wins || @board.values_at(0,4,8) == o_wins
      return "game Over"
    elsif @board.values_at(0,3,6) == x_wins || @board.values_at(0,3,6) == o_wins
      return "game over"
    elsif @board.values_at(1,4,7) == x_wins || @board.values_at(1,4,7) == o_wins
      return "game over"
    elsif @board.values_at(2,5,8) == x_wins || @board.values_at(2,5,8) == o_wins
      return "game over"
    elsif @board.values_at(2,4,6) == x_wins || @board.values_at(2,4,6) == o_wins
      return "game over"
    elsif @board.values_at(3,4,5) == x_wins || @board.values_at(3,4,5) == o_wins
      return "game over"
    elsif @board.values_at(6,7,8) == x_wins || @board.values_at(6,7,8) == o_wins
      return "game over"
    end
  end
end
