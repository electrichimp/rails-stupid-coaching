class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @res = ''
    if params[:question].downcase == 'i am going to work'
      @res = 'Great!'
    elsif params[:question][-1] == '?'
      @res = 'Silly question, get dressed and go to work!'
    else
      @res = "I don't care, get dressed and go to work!"
    end
  end
end
