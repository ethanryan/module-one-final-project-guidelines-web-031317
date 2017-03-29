require "pry"

class CommandLineInterface

  def welcome
    puts "Welcome to a very special trivia game!"
    puts "Please type in your name:"
    user_input = gets.chomp
    puts "Welcome #{user_input} to Triphy!"
  end #end method

  # The CLI must provide access to data from a
  # SQLITE3 database using ActiveRecord.

  QUESTION = Question.all.first.question
  ANSWER = Answer.all.first.answer


  def quiz_script
    # q1 = Question.all.first.question
    # a1 = Answer.all.first.answer
    #binding.pry
    #puts q1
    puts QUESTION
    user_input = gets.chomp

    until user_input == ANSWER
      puts "Try again!"
      puts QUESTION
      user_input = gets.chomp
    end

    if user_input == ANSWER
      puts "Correct!"
    end
  end

  # if user_input == a1
  #   puts "Correct!"
  # else
  #   until user_input == a1
  #     puts "Try again!"
  #     puts q1
  #     user_input = gets.chomp
  # end
  #end

  #a1 = Answer.all.first.answer


  ########-----------------------------------
  # puts "What do you call a baby dog?"
  # user_input = gets.chomp
  # if user_input == "puppy"
  #   puts "Correct!"
  #   #giphy 'puppy'
  #   #Giphy.random('puppy')
  # else
  #   puts "Try again!"
  # end #end if else statement

end #end class





##############
##  need to:::

#ask question from database <<--- how???

#if user_input == correct answer,
#say "Correct!" and show them a gif
#else
#say "Wrong answer, try again!"
