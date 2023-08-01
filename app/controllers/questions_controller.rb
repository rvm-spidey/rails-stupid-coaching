class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == 'I am going to work right now!'
      return 'Great'
    elsif your_message.end_with? '?'
      return 'Silly question, get dressed and go to work!'
    end
    "I don't care, get dressed and go to work!"
  end
end
