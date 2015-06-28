# method for getting input
def get_num
  while true
    puts "Enter a number:"
    num = gets.chomp
    if !(num =~ /^\d+$/) && !(num1 =~ /\d+\.\d+/) # regex to confirm int or a float
      puts "That's not a valid number"
    else
      break
    end
  end
  return num
end

loop do

  num1 = get_num
  num2 = get_num

  while true
    puts "------------------------------------------"
    puts "Which operation would you like to perform:"
    puts "Enter '1' for Addition"
    puts "Enter '2' for Subtraciton"
    puts "Enter '3' for Multiplication"
    puts "Enter '4' for Division"
    puts "------------------------------------------"
    operator = gets.chomp
    case operator
    when '1'
      op = "plus"
      result = num1.to_f + num2.to_f
      break
    when '2'
      result = num1.to_f - num2.to_f
      op = "minus"
      break
    when '3'
      result = num1.to_f * num2.to_f
      op = "multiplied by"
      break
    when '4'
      result = num1.to_f / num2.to_f
      op = "divided by"
      break
    else
      puts
      puts
      puts "#{operator} is not a valid operation."
      puts 
      puts "Try again..."
    end
  end

  puts 
  puts "#{num1} #{op} #{num2} = #{result}"
  puts
  puts "Do you want to perform another calculation? Press 'Y' or 'N' "
  answer = gets.chomp.downcase
  if answer != 'y'
    break
  end
end






