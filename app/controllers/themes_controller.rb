# coding: utf-8
class ThemesController < ApplicationController
  before_filter :login_required
  before_filter :find_disc
  before_filter :find_theme,:only=>[:show,:destroy]
  
  
  def show
    @questions=@theme.questions
    #pagination
    @parametrs=params
    if params[:pagenum]
      @pagenum=params[:pagenum].to_i
    else
      @pagenum=1
    end
    @perpage=30
    @pagecount=@questions.length/@perpage
    @pagecount+=1 if @questions.length%@perpage!=0
    @firstline=(@pagenum-1)*@perpage
    @questions=@questions.drop(@firstline).take(@perpage)
    respond_to do |format|
      format.html # show
      format.xml  { render :xml => @theme }
    end
  end

  def new
    @theme=@discipline.themes.build
    respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @theme }
    end
  end

  def create
    @theme=@discipline.themes.create(params[:theme])
    redirect_to discipline_theme_path(@discipline,@theme)
  end

  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to(discipline_path(@discipline)) }
        format.xml  { head :ok }
    end
  end
private

  def find_disc
    @discipline=Discipline.find(params[:discipline_id])
  end

  def find_theme
    @theme=@discipline.themes.find(params[:id])
  end

end
