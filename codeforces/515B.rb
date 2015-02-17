#!/usr/bin/env ruby

n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
ys = gets.split.map(&:to_i)

x_happy = Array::new(n, false)
y_happy = Array::new(m, false)

xs[1, xs[0]].each do |x|
  x_happy[x] = true
end

ys[1, ys[0]].each do |y|
  y_happy[y] = true
end

g = n.gcd(m)

[x_happy.length, y_happy.length].min.times {
  x_happy.length.times do |i|
    y_happy.length.times do |j|
      if (i - j).abs % g == 0 && (x_happy[i] || y_happy[j])
        x_happy[i] = y_happy[j] = true
      end
    end
  end
}

if x_happy.all? && y_happy.all?
  puts "Yes"
else
  puts "No"
end
