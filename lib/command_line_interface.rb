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

  # def ask_question_and_get_answer
  #   puts random_q
  #   user_input = gets.chomp
  # end

  # def ask_question_and_get_answer
  #   puts random_q
  #   user_input = gets.chomp
  # end



# while conditional [do]
#    code
# end
# Executes code while conditional is true.
# A while loop's conditional is separated from
# code by the reserved word do, a newline,
#   backslash \, or a semicolon ;.


# until conditional [do]
#    code
# end
# Executes code while conditional is false.
# An until statement's conditional is separated
# from code by the reserved word do, a newline, or a semicolon.



  def need_three_wins
    questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
    test_answer = "yes"
    random_q = questions.sample

    # puts random_q
    # user_input = gets.chomp

    counter = 0

    until counter == 3
      puts random_q
      user_input = gets.chomp

      if user_input == test_answer
        counter += 1
        puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
      else
        puts "\nTry again!\n\n"
      end#end if..else statement
    end#end until loop

    if counter == 3
      puts "You win!"
      open_gif
    end
  end #end method

      #binding.pry

  #     puts "\nTry again!\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #
  #     if user_input == test_answer
  #       counter += 1
  #       puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #
  #       if counter == 3
  #         puts "You win!"
  #         open_gif
  #       else
  #         puts random_q
  #         user_input = gets.chomp
  #       end #end if else statement
  #     end #end if statement
  #   end #end until loop
  # end #end need_three_wins #method






  #   questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
  #   test_answer = "yes"
  #   random_q = questions.sample
  #   puts random_q
  #   user_input = gets.chomp
  #
  #   until user_input == test_answer
  #     puts "\nTry again!\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end
  #
  #   if ((user_input == test_answer) && (counter < 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end #end if statement
  #
  #   if ((user_input == test_answer) && (counter == 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts "You win!"
  #     open_gif
  #   end #end if statement
  # end #end method














  # def three_wins
  #   counter = 0
  #   questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
  #   test_answer = "yes"
  #   random_q = questions.sample
  #   puts random_q
  #   user_input = gets.chomp
  #
  #   until user_input == test_answer
  #     puts "\nTry again!\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end
  #
  #   if ((user_input == test_answer) && (counter < 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end #end if statement
  #
  #   if ((user_input == test_answer) && (counter = 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts "You win!"
  #     open_gif
  #   end #end if statement
  # end #end method
















  # def three_wins
  #   counter = 0
  #   questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
  #   test_answer = "yes"
  #   random_q = questions.sample
  #   puts random_q
  #   user_input = gets.chomp
  #
  #   # until user_input == test_answer
  #   #   # puts "\nTry again!\n\n"
  #   #   puts random_q
  #   #   user_input = gets.chomp
  #     if user_input == test_answer
  #       # increase counter
  #       counter += 1
  #       puts random_q
  #       user_input = gets.chomp
  #       until counter == 3
  #       end
  #
  #
  #     else
  #       puts "Wrong answer, try again!"
  #       puts random_q
  #       user_input = gets.chomp
  #
  #     end
#end

    # if ((user_input == test_answer) && (counter < 2))
    #   counter += 1
    #   puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
    #   puts random_q
    #   user_input = gets.chomp
    # end #end if statement
    #
    # if ((user_input == test_answer) && (counter == 2))
    #   counter += 1
    #   puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
    #   puts "You win!"
    #   open_gif
    # end #end if statement
    #




########almost works, but logic is off......
  # def three_wins
  #   counter = 0
  #   questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
  #   test_answer = "yes"
  #   random_q = questions.sample
  #   puts random_q
  #   user_input = gets.chomp
  #
  #   until user_input == test_answer
  #     puts "\nTry again!\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end
  #
  #   if ((user_input == test_answer) && (counter < 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts random_q
  #     user_input = gets.chomp
  #   end #end if statement
  #
  #   if ((user_input == test_answer) && (counter == 2))
  #     counter += 1
  #     puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
  #     puts "You win!"
  #     open_gif
  #   end #end if statement
 #end three_wins method



  ################
  ################





  # q1 = Question.all.first.question
  # a1 = Answer.all.first.answer

  # (all caps question here) = Question.all.first.question
  # ANSWER = Answer.all.first.answer

  # make Q and A random instead of just first:::

  RANDOM_QUESTION = Question.all.sample #this gets us a random question
  QUESTION = RANDOM_QUESTION.question
  #ANSWER = RANDOM_QUESTION.answers.first.answer
  ANSWER = RANDOM_QUESTION.answers[0].answer
  #ANSWER = Answer.all.sample.answer #how do we make sure the answer to the random question is the correcct one??
  #ANSWER needs to = (all caps question)....answers

  ###how do we make random question match up with its correct answer??

  def quiz_script
    puts QUESTION
    user_input = gets.chomp

    until user_input == ANSWER
      puts "\nTry again!"
      puts QUESTION
      user_input = gets.chomp
    end

    if user_input == ANSWER
      puts "\nCorrect!"
      open_gif
    end
  end #end quiz_script

    def open_gif
      #giphy 'dance'
      #exec 'giphy "dance"' #YES!!!! works
      exec "giphy '#{ANSWER}'" #YES!!!! works
    end #end open_gif
end #end class


##############
##  need to:::

#ask question from database <<--- how???

#if user_input == correct answer,
#say "Correct!" and show them a gif
#else
#say "Wrong answer, try again!"
