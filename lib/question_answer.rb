class QuestionAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
end

#example question: "What do you call a baby dog?"
#example question: "What's a five letter word for a baby dog?"

# qa = QuestionAnswer.new(question_id: q.id, answer_id: a.id)
