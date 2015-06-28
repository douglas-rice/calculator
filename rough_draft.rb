# Build a simple calculator application

# Exercise how to kickstart us to build a an application procedurally when you have wide 
# open requirements.

# Concepts that we are covering here:
# 1. String interpolation vs concat
# 2. Extract repetitive logic to methods
# 3. Keep track of variable types (class)
# 4. Varialbe scope determined by do...end; 
#    outer scope vars are available to inner scope, but not vice versa.
# 5. Pass by reference vs pass by value; if method mutates caller, outer object was modified.

# when are you outputting data vs when are you returning data

require 'pry'
def say(msg)
   puts "=> #{msg}"
end
  
say("What's the first number?")
num1 = gets.chomp

say("What's the second number?")
num2 = gets.chomp

say("1) add 2) subtract 3) multiply 4) divide")
operator = gets.chomp

binding.pry

if operator == '1'  # string because it's being compared to a string
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_1 * num2.to_i
else 
  result = num1.to_f / num2.to_f
end

puts "Result is #{result}"