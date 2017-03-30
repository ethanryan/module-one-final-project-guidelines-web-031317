class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
end

#example question: "What do you call a baby dog?"
#example question: "What's a five letter word for a baby dog?"


#example question: "puppy"
#example question: "a puppy"

#example question: "puppies"

# *QuestionAnswer.where({question_id:2}) => [#<QuestionAnswer:0x007fb82282a190
  # id: 1,
  # question_id: 2,
  # answer_id: 1,
  # created_at: 2017-03-29 16:20:50 UTC,
  # updated_at: 2017-03-29 16:20:50 UTC>]

  # qa = QuestionAnswer.new(question_id: q.id, answer_id: a.id)
