# coding: utf-8
class QuestionsController < ApplicationController
  before_filter :find_disc
  before_filter :find_theme
  before_filter :find_quest,:only=>[:show,:destroy]

  def index

  end

  def new
    @quest=@theme.questions.build
    respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @quest }
    end
  end

  def show
    respond_to do |format|
      format.html # show
      format.xml  { render :xml => @quest }
    end
  end

  def edit
  end

  def update
  end

  def create
    @quest=@theme.questions.create(params[:question])
    
    redirect_to discipline_theme_question_path(@discipline,@theme,@quest)
  end

  def destroy
  end

private

  def find_disc
    @discipline=Discipline.find(params[:discipline_id])
  end

  def find_theme
    @theme=@discipline.themes.find(params[:theme_id])
  end

  def find_quest
    @quest=@theme.questions.find(params[:id])
  end
end
