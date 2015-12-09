# Write a clever but readable Ruby program that updates this file and the final
# contents become like this:
#
# Thanks to Marcos Souza for this exercise. A plain text file has the following contents:
#
# text text text text text
# text text text text text
# text text word text text
# text text text text text
#
# text text text text text
# text text text text text
# text text text text text
# text text inserted word text text
# text text text text text
# text text text text text

# Do not hard code the file name
require './2_week/1c_prompt'
# borrowed code from Kirk
def insert_word(file, target_word, inserted_word)
  file_to_string = File.read(file)
  File.open(file, 'w') do |f|
    f.puts( file_to_string.gsub(target_word, inserted_word + ' ' + target_word))
  end
end

# make this input as well, with maybe text.txt as a 'default' value for unattended running
file = prompt("What file are we modifying?")
if file.empty?
  file = 'text.txt'
end
unless File.exist?(file)
  puts "There is no file called #{file}.  Exiting program."
  exit(0) # -> We want to get out of this program.
end
puts '=+' * 40
puts File.open(file, 'r').each_line.to_a
puts '=+' * 40

puts "Your file is above"
target_word = prompt "What is the target we are looking for?"
inserted_word = prompt "What is the word you would like to insert in front of '#{target_word}'"

insert_word(file, target_word, inserted_word)

puts "Here is the resulting file!"
puts '=+' * 40
puts File.open(file, 'r').each_line.to_a
puts '=+' * 40
