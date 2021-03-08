#!/bin/ruby

def nextMove(n, r, c, grid)
  puts "0 0"
end

n = gets.to_i

r, c = gets.strip.split.map { |num| num.to_i }

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

nextMove(n, r, c, grid)
