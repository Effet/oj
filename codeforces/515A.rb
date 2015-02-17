#!/usr/bin/env ruby

a, b, s = gets.split.map(&:to_i)

dis = a.abs + b.abs
if dis <= s and (dis - s).even?
  puts "Yes"
else
  puts "No"
end
  
