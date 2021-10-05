# Write a game where the player has to guess a
# random price between 1 and 100 chosen by the
# program.
# The program should keep asking until the player
# guesses the right price.
# When the guess is right, the program displays
# how many guesses it took the player to win.

#We need to find the 'right' number from 1-100
#Ask user for a number
#Loop in case the user gets the number wrong
#Add a wrong answer counter
#Message to display if you get the wrong or right answer
#Display how many times they guessed at the end

right_number = rand(1..100)
puts right_number
puts "Choose a number between 1 and 100"
chosen_number = gets.chomp.to_i
count = 1
until right_number == chosen_number
  puts "Nice try, guess again!"
  puts "Choose a number between 1 and 100"
  chosen_number = gets.chomp.to_i
  count += 1
end
puts "Correct!"
puts "It took you #{count} number of times to guess"
