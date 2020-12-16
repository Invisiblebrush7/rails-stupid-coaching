class PagesController < ApplicationController
  def home
  end

  def about
    @question = params[:question]

    if @question.downcase == 'I am going to work'.downcase
      @answer = 'Great!'
    elsif @question.downcase[@question.size - 1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
