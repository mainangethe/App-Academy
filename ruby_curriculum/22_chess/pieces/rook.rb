require_relative 'piece'
require_relative './modules/slideable'
require 'colorize'

class Rook < Piece 
  include Slideable
  attr_accessor :val, :color
  
  def initialize(color, val)
    super(color, val)
  end
  
end

