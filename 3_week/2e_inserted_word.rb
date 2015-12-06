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
    f.puts( file_to_string.sub(target_word, inserted_word + ' ' + target_word))
  end
end

target_word = prompt "What is the target we are looking for?"
inserted_word = prompt "What is the word you would like to insert in front of '#{target_word}'"
# make this input as well, with maybe text.txt as a 'default' value for unattended running
file = 'text.txt'
insert_word(file, target_word, inserted_word)
