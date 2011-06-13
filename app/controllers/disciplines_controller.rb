# coding: utf-8
class DisciplinesController < ApplicationController
   before_filter :login_required
  before_filter :admin_required, :only=>[:new,:create,:destroy,:edit,:update]
  before_filter :secondmenu
  before_filter :find_discipline, :only=>[ :edit, :show,:update]

  def index
    @disciplines=Discipline.all.sort{|x,y| x.title.mb_chars.downcase<=>y.title.mb_chars.downcase}

  #pagination
  @parametrs=params
  if params[:pagenum]
    @pagenum=params[:pagenum].to_i
  else
    @pagenum=1
  end
  @perpage=30
  @pagecount=@disciplines.length/@perpage
  @pagecount+=1 if @disciplines.length%@perpage!=0
  @firstline=(@pagenum-1)*@perpage
  @disciplines=@disciplines.drop(@firstline).take(@perpage)

	respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @disciplines }
  end
  end

  def show

    
    @themes=@discipline.themes.sort{|x,y| x.title.mb_chars.downcase<=>y.title.mb_chars.downcase}
    #pagination
    @parametrs=params
    if params[:pagenum]
      @pagenum=params[:pagenum].to_i
    else
      @pagenum=1
    end
    @perpage=30
    @pagecount=@themes.length/@perpage
    @pagecount+=1 if @themes.length%@perpage!=0
    @firstline=(@pagenum-1)*@perpage
    @themes=@themes.drop(@firstline).take(@perpage)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discipline }
    end

  end


  def edit
    @submit_label="Изменить"
  end

  def update
    if @discipline.update_attributes(params[:discipline])
      redirect_to @discipline,:notice=>'Название темы успешно изменено.'
    else
      @submit_label="Изменить"
      render :edit
    end
  end

  def new
	
    @discipline=Discipline.new
    @submit_label="Создать"
	respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @discipline }
    end
  end

  def create
	
    @discipline = Discipline.new(params[:discipline])

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to(disciplines_path, :notice => 'Дисциплина успешно создана.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        @submit_label="Создать"
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    begin
	
	@discipline.destroy
   rescue ActiveRecord::RecordNotFound
    end
	respond_to do |format|
        format.html { redirect_to(disciplines_url) }
        format.xml  { head :ok }
    end
  end
private
 def secondmenu
   @secondmenu=true
   @ai='#item2'
 end

 def find_discipline
  @discipline=Discipline.find(params[:id])
 end
end
