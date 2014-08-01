require 'rspec'
require 'player'
require 'board'

describe 'Board' do
  it 'creates a new board with nine spaces' do
    test_board = Board.new
    expect(test_board.board).to eq [['1'],['2'],['3'],['4'],['5'],['6'],['7'],['8'],['9']]
  end

  it 'creates a game with a board and two players' do
    test_board = Board.new
    test_player1 = Player.new("Mark")
    test_player2 = Player.new("Josh")
    expect(Player.players).to eq [test_player1, test_player2]
    expect(test_board.board).to eq [['1'],['2'],['3'],['4'],['5'],['6'],['7'],['8'],['9']]
  end
end

describe 'Player' do
  before do
    Player.clear
  end
  it 'creates a player with a name' do
    test_player = Player.new("Mark")
    expect(test_player.name).to eq "Mark"
  end

  it 'stores players in @@players' do
    test_player1 = Player.new("Mark")
    test_player2 = Player.new("Jack")
    expect(Player.players).to eq [test_player1, test_player2]
  end

  describe '.clear' do
    it 'clears out array' do
      test_player1 = Player.new("Mark")
      test_player2 = Player.new("Jack")
      expect(Player.clear).to eq []
    end
  end
end



