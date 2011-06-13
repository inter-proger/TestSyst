# coding: utf-8
class ThemesController < ApplicationController
  before_filter :login_required
  before_filter :find_disc
  before_filter :find_theme,:only=>[:show,:destroy,:edit,:update]
  before_filter :secondmenu
  
  def show

    @questions=@theme.questions.sort{|x,y| x.content.mb_chars.downcase <=> y.content.mb_chars.downcase}
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
    @submit_label="Создать"
    @theme=@discipline.themes.build
    respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @theme }
    end
  end

  def create
    @theme=@discipline.themes.build(params[:theme])
    if @theme.save
      redirect_to discipline_theme_path(@discipline,@theme),:notice=>"Тема успешно создана"
    else
      @submit_label="Создать"
      render :new
    end
  end

  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to(discipline_path(@discipline)) }
        format.xml  { head :ok }
    end
  end

  def edit
    @submit_label="Изменить"
  end

  def update

    if @theme.update_attributes(params[:theme])
      redirect_to discipline_theme_path(@discipline,@theme),:notice=>"Название темы успешно изменено"
    else
      @submit_label="Изменить"
      render :edit
    end
  end
private

  def find_disc
    @discipline=Discipline.find(params[:discipline_id])
  end

  def find_theme
    @theme=@discipline.themes.find(params[:id])
  end
  
 def secondmenu
   @secondmenu=true
   @ai='#item2'
 end
end
