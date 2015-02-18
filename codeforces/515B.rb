#!/usr/bin/env ruby

n, m = gets.split.map(&:to_i)
_, *xs = gets.split.map(&:to_i)
_, *ys = gets.split.map(&:to_i)

x_happy = Array::new(n, false)
y_happy = Array::new(m, false)

xs.each { |i| x_happy[i] = true }
ys.each { |i| y_happy[i] = true }

(n*m*2).times do |i|
  if x_happy[i%n] || y_happy[i%m]
    x_happy[i%n] = y_happy[i%m] = true
  end
end

if x_happy.all? && y_happy.all?
  puts "Yes"
else
  puts "No"
end
