class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
end

#example question: "What do you call a baby dog?"
#example question: "What's a five letter word for a baby dog?"


#example question: "puppy"
#example question: "a puppy"

#example question: "puppies"
