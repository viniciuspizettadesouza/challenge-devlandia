#!/bin/ruby

def next_move(n, r, c, grid)
  princess = { x: 0, y: 0 }
  mario = { x: c, y: r }

  two_dimensional = grid.map { |i| i.split(%r{\s*}) }

  two_dimensional.map.with_index do |row, row_index|
    row.map.with_index do |col, col_index|
      if (col == 'p')
        princess[:x] = col_index
        princess[:y] = row_index
      end
    end
  end

  moved = false
  until moved == true
    if mario[:y] < princess[:y] && moved == false
      mario[:y] += 1
      puts('DOWN')
      moved = true
    end
    if mario[:y] > princess[:y] && moved == false
      mario[:y] -= 1
      puts('UP')
      moved = true
    end
    if mario[:x] < princess[:x] && moved == false
      mario[:x] += 1
      puts('RIGHT')
      moved = true
    end
    if mario[:x] > princess[:x] && moved == false
      mario[:x] -= 1
      puts('LEFT')
      moved = true
    end
  end
end

n = gets.to_i

r, c = gets.strip.split.map { |num| num.to_i }

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

next_move(n, r, c, grid)
