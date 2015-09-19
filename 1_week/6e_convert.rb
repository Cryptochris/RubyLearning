# **Exercise6**.
#
# Write a method called convert that takes one argument which is a temperature
# in degrees Fahrenheit. This method should return the temperature in degrees
# Celsius.
#
# To format the output to, say, 2 decimal places, we can use the Kernel's
# **format** method.
#
# For example, if `x = 45.5678` then `format("%.2f", x)` will return the string
# "45.57".
#
# Another way is to use the **round** function as follows:
#
#     puts (x * 100).round / 100.0

# doctest: I hive a method called convert
# >> convert(212)
# => 100
# doctest: Freezing point
# >> convert(32)
# => 0
# doctest: Body temperature is 98.6 in F, or 37 in C
# >> convert(98.6).round(8)
# => 37.0
# doctest: Little less than body temperature should not be 37
# >> convert(98).round(4)
# => 36.6667
# Global method `convert` converts a temperature given in Fahrenheit to Celsius
# It returns a float
def f_to_c(fahrenheit)
  (fahrenheit - 32.0) / 1.8 # as true and honest as can possibly be.
end
alias :convert :f_to_c

if __FILE__ == $PROGRAM_NAME # application guard or library guard
  [212, 100, 98.6, 98, 0, 32, -40, 17.78].each do |value|
    puts(format("#{value}F is %.2fC", f_to_c(value)))
  end
end

