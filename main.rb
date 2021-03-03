#!/bin/ruby

def display_path_to_princess(n, grid)
  print(n, grid)
  return ''
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

display_path_to_princess(m, grid)
