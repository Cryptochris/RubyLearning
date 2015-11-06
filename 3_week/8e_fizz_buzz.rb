# The FizzBuzz game will take a number and return a string, corresponding as
# Fizz or Buzz or FizzBuzz reliant on the status of
def fizz_buzz(number, rules = { 3 => 'Fizz', 5 => 'Buzz'} )
  result = ''
  rules.each_pair do |k, v|
    result << v if  number % k == 0
  end
  # result.empty? ? number : result
  result.empty? && number || result
end
start = -15
stop = 30
start.upto(stop) do |number|
  puts fizz_buzz(number, {7 => 'Dezz', 11 => 'Kezz'})
end

puts "=  Back to default rules ="
puts fizz_buzz(stop)

