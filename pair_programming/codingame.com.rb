def conditional_else(boolean)
  # wrong for a two state problem
  if boolean
    "Evaluates to true because of the boolean"
  else
    "You gave me something that evaluated as nil or false, we call that falsey"
  end
end

def no_if(true_or_false, true_statement = -> {'This is true'}, false_statement = 'nah this is false')
  true_or_false and
    true_statement.call or
    false_statement
end

def safe_distance(fcc_regulation = 5)
 fcc_regulation
end

def conditional_elsif(distance, minimalrange, maxrange)
  if distance <= minimalrange
    'collision'
  elsif distance >= maxrange
    'out of range'
  elsif distance <= minimalrange + safe_distance
    'imminent danger'
  else
    'target is in range'
  end
end

dist_1 = 1
dist_2 = 2

# puts conditional_else(dist_1 <= dist_2)
puts( no_if(dist_1 <= dist_2, -> {puts "Boogah"}) )

minimal_range = 15
out_of_range = 30
[
  [15, minimal_range, out_of_range, "#{minimal_range} is the minimal range"],
  [5, minimal_range, out_of_range, "5 is collision"],
  [25, minimal_range, out_of_range, "25 is out of range, so no concern"],
].each do |distance, min, max, description|
  puts conditional_elsif(distance, min, max)
  puts "Above should have given us #{description}"
end


