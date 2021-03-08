#!/bin/ruby

def display_path_to_princess(n, grid)
  princess = { x: 0, y: 0 }
  mario = { x: 0, y: 0 }

  two_dimensional = grid.map { |i| i.split(%r{\s*}) }

  two_dimensional.map.with_index do |row, row_index|
    row.map.with_index do |col, col_index|
      if (col == 'p')
        princess[:x] = col_index
        princess[:y] = row_index
      end
    end
  end

  two_dimensional.map.with_index do |row, row_index|
    row.map.with_index do |col, col_index|
      if (col == 'm')
        mario[:x] = col_index
        mario[:y] = row_index
      end
    end
  end

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

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

display_path_to_princess(m, grid)
