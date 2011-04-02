# coding: utf-8
class DisciplinesController < ApplicationController
  before_filter :admin_required, :only=>[:new,:create,:destroy]
  
  def index
	@disciplines=Discipline.all
	respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @disciplines }
  end
  end

  def show
    @discipline=Discipline.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discipline }
    end

  end


  def new
	@discipline=Discipline.new
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
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
	@discipline=Discipline.find(params[:id])
	@discipline.destroy
	respond_to do |format|
        format.html { redirect_to(disciplines_url) }
        format.xml  { head :ok }
    end
  end

end
