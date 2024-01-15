class QuestionsController < ApplicationController
  def home
  end

  def ask
  end
  def answer
    @question = params[:question]
    @answer = compute_answer(@question)
  end
    def compute_answer(question)
      if question.downcase == 'i am going to work'
        'Great!'
      elsif question.end_with?('?')
        'Silly question, get dressed and go to work!'
      elsif question.downcase == ''
        'No question'
      else
        "I don't care, get dressed and go to work!"
      end
    end
end
