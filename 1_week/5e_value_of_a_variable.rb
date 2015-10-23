# The following program prints the value of the variable... Why?
my_string = 'Hello Ruby World'

def my_string
  'Hello World'
end

puts my_string

# the following is exploratoin code
puts my_string()

public :my_string
puts my_string.my_string

puts [].my_string
puts self.class

# How do I actually call the local variable now that I have changed the access
# for my_string method?
#
private :my_string
puts my_string

puts send(:my_string)
puts __send__(:my_string)

