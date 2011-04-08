# coding: utf-8
class QuestionsController < ApplicationController
  before_filter :find_disc
  before_filter :find_theme
  before_filter :find_quest,:only=>[:show,:destroy,:answsadd]

  def index
    redirect_to discipline_theme_path(@discipline,@theme)
  end

  def new
    @pict=Picture.new
    @quest=@theme.questions.build
    respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @quest }
    end
  end

  def show
    @pict=Picture.new
    @answs_count=@quest.answers.count
    @qtid=@quest.qtype_id
    if @qtid==9
      @answs=@quest.answers
      @arr1=Array.new(10){|i| nil}
      @arr2=Array.new(10){|i| nil}
      @answs.each do |elem|
        if elem.col==1
          @arr1[elem.right-1]=elem.content
        else
          @arr2[elem.right-1]=elem.content
        end
      end
    end
    
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
    @quest.destroy
    redirect_to discipline_theme_path(@discipline,@theme)
  end

  def answsadd
    @quest.answers.clear
    @qtid=@quest.qtype_id
    1.upto(10) do |i|
        break if params[:content][i.to_s]==""
        @answ=@quest.answers.build
        @answ.content=params[:content][i.to_s]
        if params[:right]==i.to_s
          @answ.right=1
        else
          @answ.right=0
        end
        @answ.save
      end if @qtid==6
      
    1.upto(10) do |i|
        break if params[:content][i.to_s]==""
        @answ=@quest.answers.build
        @answ.content=params[:content][i.to_s]
        if params[:right][i.to_s]=="1"
          @answ.right=1
        else
          @answ.right=0
        end
        @answ.save
      end if @qtid==7
     1.upto(10) do |i|
        break if params[:content][i.to_s]==""
        @answ=@quest.answers.build
        @answ.content=params[:content][i.to_s]
        @answ.right=1
        @answ.save
      end if @qtid==8
      1.upto(10) do |i|
        break if params[:content][i.to_s]==""
        @answ=@quest.answers.build
        @answ.content=params[:content][i.to_s]
        @answ.right=i
        @answ.save
      end if @qtid==10

    1.upto(10) do |i|
        break if (params[:content1][i.to_s]=="")&&(params[:content2][i.to_s]=="")
        if (params[:content1][i.to_s]!="")
          @answ=@quest.answers.build
          @answ.content=params[:content1][i.to_s]
          @answ.right=i
          @answ.col=1
          @answ.save
        end
        if (params[:content2][i.to_s]!="")
          @answ=@quest.answers.build
          @answ.content=params[:content2][i.to_s]
          @answ.right=i
          @answ.col=2
          @answ.save
        end
      end if @qtid==9
    redirect_to discipline_theme_question_path(@discipline,@theme,@quest),:notice=>"Варианты ответов добавлены."
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
