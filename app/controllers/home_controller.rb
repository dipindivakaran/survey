
class HomeController < ApplicationController
  before_filter :require_user

  def index
    @questions = Question.find(:all,:include=>[:answers])
    @comment = Comment.new
    @answer = Answer.new
  end

  def new_question
    @question = Question.new
  end

  def save_question
   question = params[:question]
   question.save
  end

  def save_answer

        question = Question.find(params[:question],:include=>[:answers]).first
        answer = Answer.new(params[:answer])
        question.answer << answer
        question.save

  end

  def save_comment


  end



end
