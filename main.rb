#!/bin/ruby

def displayPathtoPrincess(n,grid)
  return ""
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)