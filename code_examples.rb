# Write a method to ask the questions for us, so we don't have to 
# repeat code.
# It will need to take a question as a parameter, and return 'true'
# if the person answers 'yes' and 'false' if they answer 'no'.

def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts "Please answer 'yes' or 'no'."
    end
  end
  return answer
end

puts "Hello, and thank you for taking the time to"
puts "help us with our experiment. Our experiment"
puts "has to do with the way people feel about"
puts "Mexican food.  Just think about Mexican food"
puts "and try to answer every question honestly,"
puts "with either a 'yes' or a 'no'.  Our experiement"
puts "has nothing to do with bed-wetting."
puts

likes_tacos = ask('Do you like eating tacos?')
likes_burritos = ask('Do you like eating burritos?')
wets_bed = ask('Do you wet the bed?')
likes_chimis = ask('Do you like to eat chimichangas?')
likes_sopas = ask('Do you like to eat sopapillas?')
puts "Just a few more questions..."
likes_horchata = ask('Do you like drinking horchata?')
likes_flautas = ask('Do you like eating flautas?')

puts
puts "DEBRIEFING:"
puts "Thank you for taking the time to help with"
puts "this experiment.  In fact, this experiment"
puts "has nothing to do with Mexican food.  It is"
puts "an experiment about bed-wetting.  The Mexican"
puts "food was just there to catch you off guard"
puts "in the hopes that you would answer more"
puts "honestly.  Thanks again."
puts

if wets_bed
  puts "You wet the bed."
else
  puts "You don't wet the bed."
end











