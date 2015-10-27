=begin
Exercise1. Write a program that processes the string
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
a line at a time, using all that we have learned so far. The expected output is:

  c:> ruby 2wk_1e_linify.rb
Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.

view raw2wk_1e_linify.txt hosted with ❤ by GitHub

=end >ruby tmp.rb

def linify(some_string)
  some_string.each_line.with_index(1).collect {|l, i| "Line #{i}: #{l}"}.join
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
puts linify(s)

