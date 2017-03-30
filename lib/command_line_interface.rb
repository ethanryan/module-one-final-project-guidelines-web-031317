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

  def three_wins
    counter = 0
    questions = ["aaa?", "bbbb?", "ccc?", "ddd?", "eeee?"]
    answer = "yes"
    random_q = questions.sample

    puts random_q
    user_input = gets.chomp


    until user_input == answer
      puts "\nTry again!\n\n"
      puts random_q
      user_input = gets.chomp
    end

    if ((user_input == answer) && (counter < 2))
      counter += 1
      puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
      puts random_q
      user_input = gets.chomp
    end #end if statement

    if ((user_input == answer) && (counter = 2))
      counter += 1
      puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
      puts "You win!"
      open_gif
    end #end if statement

  end #end three_wins method


  ################
  ################



  # answers = ["A1", "A2", "A3"]
  # questions = ["Q1", "Q2", "Q3"]
  # q_a = {"Q1": "A1", "Q2": "A2", "Q3": "A2"}
  # questions.all.sample.question

  ####below will be third question:::::

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
