class Player

  @@players = []

  def Player.players
    @@players
  end

  def Player.clear
    @@players = []
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@players << self
  end
end
