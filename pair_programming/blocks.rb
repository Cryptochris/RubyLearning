def iteration(first, second)   # implicit block is given and is technically an argument, but ignored as an argument for purposes of arity.
  yield first
  while first < second
    first = first.next
   yield first
  end
end

 iteration( 1, 4) {|i| puts i}

def test(number)
  yield number
  puts "this is the number#{number}"
  yield 5
  puts "this is 5"
  ten = 10
  yield ten
  puts "this is ten: #{ten}"
  yield 150
  puts "this is 150"
end
test('the truth') { |n| puts n * 3 }
