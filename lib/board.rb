class Board

  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    puts "-----------"
  end

  def position(user_input)
    user_input_int = user_input.to_i
    self.cells[user_input_int - 1]
  end

  def full?
    self.cells.all?(|cell| cell == "X" || cell == "O")
  end

  def turn_count
    self.cells.collect {|cell| cell == "X" || cell = "O"}.size
  end

  def taken?(position)
    position(position) == "X" || position(position) == "O"
  end

  def valid_move?
end
