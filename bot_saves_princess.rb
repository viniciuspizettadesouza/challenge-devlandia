#!/bin/ruby
# frozen_string_literal: true

def display_path_to_princess(_size, grid)
  princess = { x: 0, y: 0 }
  mario = { x: 0, y: 0 }

  two_dimensional = grid.map { |i| i.split(/\s*/) }

  princess_position = get_position(two_dimensional, 'p')
  princess[:x] = princess_position.first
  princess[:y] = princess_position.last

  mario_position = get_position(two_dimensional, 'm')
  mario[:x] = mario_position.first
  mario[:y] = mario_position.last

  until mario[:x] == princess[:x]
    if mario[:x] < princess[:x]
      mario[:x] += 1
      puts('RIGHT')
    end
    if mario[:x] > princess[:x]
      mario[:x] -= 1
      puts('LEFT')
    end
  end
  until mario[:y] == princess[:y]
    if mario[:y] < princess[:y]
      mario[:y] += 1
      puts('DOWN')
    end
    if mario[:y] > princess[:y]
      mario[:y] -= 1
      puts('UP')
    end
  end
end

def get_position(grid_2d, initial)
  x, y = 0
  grid_2d.map.with_index do |row, row_index|
    row.map.with_index do |col, col_index|
      if col == initial
        x = col_index
        y = row_index
      end
    end
  end
  [x, y]
end

n = gets.to_i

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets.strip
end

display_path_to_princess(n, grid)
