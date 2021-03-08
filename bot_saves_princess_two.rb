#!/bin/ruby
# frozen_string_literal: true

def next_move(_size, row, col, grid)
  princess = { x: 0, y: 0 }
  mario = { x: col, y: row }

  two_dimensional = grid.map { |i| i.split(/\s*/) }

  princess_position = get_position(two_dimensional, 'p')
  princess[:x] = princess_position.first
  princess[:y] = princess_position.last
  move_mario(mario, princess)
end

def get_position(grid_2d, initial)
  x, y = 0
  grid_2d.map.with_index do |row_2d, row_index|
    row_2d.map.with_index do |col_2d, col_index|
      if col_2d == initial
        x = col_index
        y = row_index
      end
    end
  end
  [x, y]
end

def move_mario(mario, princess)
  moved = false
  until moved
    if mario[:y] < princess[:y] && !moved
      mario[:y] += 1
      puts('DOWN')
      moved = true
    end
    if mario[:y] > princess[:y] && !moved
      mario[:y] -= 1
      puts('UP')
      moved = true
    end
    if mario[:x] < princess[:x] && !moved
      mario[:x] += 1
      puts('RIGHT')
      moved = true
    end
    if mario[:x] > princess[:x] && !moved
      mario[:x] -= 1
      puts('LEFT')
      moved = true
    end
  end
end

n = gets.to_i

row, column = gets.strip.split.map(&:to_i)

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

next_move(n, row, column, grid)
