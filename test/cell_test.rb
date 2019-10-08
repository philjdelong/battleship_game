require'pry'
require'./lib/ship.rb'#!/usr/bin/env ruby -wKU
require'./lib/cell.rb'

class CellTest < Minitest::Test

def setup
  cell = Cell.new("B4")
end

def test_it_exists
  assert_instance_of Cell, cell
end

def 
  assert_equal
