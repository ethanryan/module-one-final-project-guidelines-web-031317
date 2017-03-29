def welcome
  puts "Welcome to a very special trivia game!"
  puts "Please type in your name:"
  user_input = gets.chomp
  puts "Welcome #{user_input} to Triphy!"
end

welcome 
