require "giphy"

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
      open_gif
    end
  end

    def open_gif
      #giphy 'dance'
      #exec 'giphy "dance"' #YES!!!! works
      exec "giphy '#{ANSWER}'" #YES!!!! works
    end
end #end class



##############
##  need to:::

#ask question from database <<--- how???

#if user_input == correct answer,
#say "Correct!" and show them a gif
#else
#say "Wrong answer, try again!"
