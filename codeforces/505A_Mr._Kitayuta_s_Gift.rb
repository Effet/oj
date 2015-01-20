#!/usr/bin/env ruby

def is_palindrome(s)
  s == s.reverse
end

def can_palindrome(s)
  (0..s.length).each do |i|
    ('a'..'z').each do |c|
      ns = s.dup # or s.clone ?
      ns.insert(i, c)
      return ns if is_palindrome ns
    end
  end
  nil
end

s = gets.chomp

puts (can_palindrome s) || 'NA'
