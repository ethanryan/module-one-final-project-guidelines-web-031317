require "giphy"

class CommandLineInterface

  def welcome
    puts "Welcome to a very hard trivia game!"
    puts "Please type in your name:"
    user_input = gets.chomp
    puts "Welcome #{user_input} to Triphy!"
  end #end method

  # The CLI must provide access to data from a
  # SQLITE3 database using ActiveRecord.

  ####user must get two questions correct
  ####will then get asked a final_question
  ####if answers final question correctly,
  ####user "wins" game and sees a gif



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
      puts "Try again!"
      puts QUESTION
      user_input = gets.chomp
    end

    if user_input == ANSWER
      puts "Correct!"
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
