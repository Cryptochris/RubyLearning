# I want to write a program that greets the world when I wake up in the
# morning.  I just want to stretch and say hello and then my computer says
# "hello world".  Eventually, I am going to realize I dont want to greet the
# world everytime, but sometimes I want to greet someone personally.  I may
# want to use the same program to ask if someone is there.
#
#     doctest: I can greet the world
#     This is just a comment.
#     >> hello
#     => 'Hello World!'
#
#     doctest: I can greet someone personally
#     >> hello('Chris')
#     => 'Hello Chris!'
#
#     doctest: I can ask if someone is there
#     >> hello('Victor', '?')
#     => 'Hello Victor?'
def hello(name = 'World', punctuation = '!')
  "Hello #{name}#{punctuation}"
end
