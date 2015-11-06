times_two = proc { |x| x * 2 }

puts "== First part of run =="
puts times_two[8, " second argument that our proc doesn't ask for"]
puts times_two.call(8)
puts "== First part of run end =="

def method_name(value, age)
  puts yield value, age
  # puts mathmaticoperation.call(value)
  puts age
end

age = 18
name = 'Chris'
greeting = proc {|name| "Hello #{name} #{age}"}

method_name(name, 18) {|v, y| v.to_s}
method_name('George', 16, &greeting)
method_name(("hi"), 3, &times_two)
