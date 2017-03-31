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
      question = random_q.question #this is the random question objects's question string
      answer_array_of_strings = random_q.answers.map { |answer_obj| answer_obj.answer} #mapping over our random question's answer objects and returning an array containing their answers as strings

      puts question
      user_input = gets.chomp.downcase

      if answer_array_of_strings.include?(user_input) #if our array of answer strings includes the user_input
        counter += 1 #add a point to the counter
        puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
      else
        puts "\nTry again!\n\n"
      end #end if..else statement
    end #end until loop


    if counter == 3 #meaning user_input was correct...
      puts "You win!"
      exec "giphy '#{user_input}'" #YES!!!! show user a random gif related to their correct answer
      #open_gif
    end
  end #end method

end #end class
