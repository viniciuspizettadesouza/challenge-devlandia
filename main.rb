#!/bin/ruby
require 'pry'

def display_path_to_princess(n, grid)
  princess = { x: 0, y: 0 }
  mario = { x: 0, y: 0 }

  two_dimensional = grid.map { |i| i.split(%r{\s*}) }

  return ''
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

display_path_to_princess(m, grid)
