# coding: utf-8
class QtypesController < ApplicationController
   before_filter :login_required
  # GET /qtypes
  # GET /qtypes.xml
  def index
    @qtypes = Qtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qtypes }
    end
  end

  # GET /qtypes/1
  # GET /qtypes/1.xml
  def show
    @qtype = Qtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qtype }
    end
  end

  # GET /qtypes/new
  # GET /qtypes/new.xml
  def new
    @qtype = Qtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @qtype }
    end
  end

  # GET /qtypes/1/edit
  def edit
    @qtype = Qtype.find(params[:id])
  end

  # POST /qtypes
  # POST /qtypes.xml
  def create
    @qtype = Qtype.new(params[:qtype])

    respond_to do |format|
      if @qtype.save
        format.html { redirect_to(@qtype, :notice => 'Qtype was successfully created.') }
        format.xml  { render :xml => @qtype, :status => :created, :location => @qtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @qtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qtypes/1
  # PUT /qtypes/1.xml
  def update
    @qtype = Qtype.find(params[:id])

    respond_to do |format|
      if @qtype.update_attributes(params[:qtype])
        format.html { redirect_to(@qtype, :notice => 'Qtype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @qtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qtypes/1
  # DELETE /qtypes/1.xml
  def destroy
    begin
    @qtype = Qtype.find(params[:id])
   
    @qtype.destroy
    rescue ActiveRecord::RecordNotFound
    end
    respond_to do |format|
      format.html { redirect_to(qtypes_url) }
      format.xml  { head :ok }
    end
  end
end
