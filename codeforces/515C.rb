#!/usr/bin/env ruby

# 2 3   5   7
#     4   6   8 9

# 4! = 3! * 2 * 2
# 6! = 5! * 3!
# 8! = 7! * 2 * 2 * 2
# 9! = 7! * 3! * 3! * 2

gets
a = gets.chomp.chars.map(&:to_i)

puts a.map { |x|
  case x
  when 2, 3, 5, 7
    [x]
  when 4
    [3, 2, 2]
  when 6
    [5, 3]
  when 8
    [7, 2, 2, 2]
  when 9
    [7, 3, 3, 2]
  else
    []
  end
}.inject(:+).sort { |x,y| y <=> x }.join
