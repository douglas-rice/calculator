# Write a program that takes a number from the user between 0 and 100 and reports 
# back whether the number is between 0 and 50, 50 and 100, or above 100.

# 3 examples
# Example 1 is with if/else statements
# Example 2 is a Case statement without an argument
# Example 3 is a Case statement with an argument
	
def num_eval(num)
	if num < 0
		puts "You can't enter a negative number"
	elsif num <= 50
		puts "#{num} is between 0 and 50"
	elsif num <= 100
		puts "#{num} is between 51 and 100"
	else
		puts "#{num} is above 100"
	end
end

def num_eval_case(num)
	case
	when num < 0
		puts "You can't enter a negative number"
	when num <= 50
		puts "#{num} is between 0 and 50"
	when num <= 100
		puts "#{num} is between 51 and 100"
	else
		puts "#{num} is above 100"
	end
end

# another way to structure the case statement

def num_eval_case2(num)
	case num
	when 0..50
		puts "#{num} is between 0 and 50"
	when 51..100
		puts "#{num} is between 51 and 100"
	else
		if num < 0
			puts "You can't enter a negative number"
		else
			puts "#{num} is above 100"
	    end
	end
end


puts "Please enter an integer between 0 and 100:"
num = gets.chomp.to_i

num_eval(num)
num_eval_case(num)
num_eval_case2(num)
