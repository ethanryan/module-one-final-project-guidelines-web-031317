require "giphy"

class CommandLineInterface

  def welcome
    puts "\nWelcome to a very hard trivia game!"
    puts "\nPlease type in your name:"
    user_input = gets.chomp
    puts "\nWelcome #{user_input} to Triphy!\n\n"
  end #end method

  # The CLI must provide access to data from a
  # SQLITE3 database using ActiveRecord.

  ####user must get two questions correct
  ####will then get asked a final_question
  ####if answers final question correctly,
  ####user "wins" game and sees a gif

#need to: ask user question from database

#ANSWER = Answer.all.sample.answer #how do we make sure the answer to the random question is the correcct one??
###how do we make random question match up with its correct answer??

  def need_three_wins

    counter = 0

    until counter == 3
      random_q = Question.all.sample #this gets us a random question
      question = random_q.question
      answer = random_q.answers[0].answer #[0] is same as first
      #problem here is that questions with multiple answers
      #will only take first answer... cuz of [0] above,
      #used to get into array to get to answer string.
      #want "What do you prefer: cats or dogs?"
      #to take both answers as correct, but can't,
      #and exec "giphy '#{answer}'" will relate to first answer too.

      puts question
      user_input = gets.chomp.downcase

      if user_input == answer
        counter += 1
        puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
      else
        puts "\nTry again!\n\n"
      end #end if..else statement
    end #end until loop

    if counter == 3
      puts "You win!"
      exec "giphy '#{answer}'" #YES!!!! works
      #open_gif
    end
  end #end method

end #end class
