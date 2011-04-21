#coding: utf-8
class TconfigurationsController < ApplicationController
   before_filter :login_required
  before_filter :admin_required, :only=>[:new,:create,:destroy]
  # GET /tconfigurations
  # GET /tconfigurations.xml
  def index
    @tconfigurations = Tconfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tconfigurations }
    end
  end

  # GET /tconfigurations/1
  # GET /tconfigurations/1.xml
  def show
    @tconfiguration = Tconfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tconfiguration }
    end
  end

  # GET /tconfigurations/new
  # GET /tconfigurations/new.xml
  def new
    @tconfiguration = Tconfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tconfiguration }
    end
  end

  # GET /tconfigurations/1/edit
  def edit
    @tconfiguration = Tconfiguration.find(params[:id])
  end

  # POST /tconfigurations
  # POST /tconfigurations.xml
  def create
    @tconfiguration = Tconfiguration.new(params[:tconfiguration])

    respond_to do |format|
      if @tconfiguration.save
        format.html { redirect_to(@tconfiguration, :notice => 'Tconfiguration was successfully created.') }
        format.xml  { render :xml => @tconfiguration, :status => :created, :location => @tconfiguration }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tconfiguration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tconfigurations/1
  # PUT /tconfigurations/1.xml
  def update
    @tconfiguration = Tconfiguration.find(params[:id])

    respond_to do |format|
      if @tconfiguration.update_attributes(params[:tconfiguration])
        format.html { redirect_to(@tconfiguration, :notice => 'Tconfiguration was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tconfiguration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tconfigurations/1
  # DELETE /tconfigurations/1.xml
  def destroy
    @tconfiguration = Tconfiguration.find(params[:id])
    @tconfiguration.destroy

    respond_to do |format|
      format.html { redirect_to(tconfigurations_url) }
      format.xml  { head :ok }
    end
  end
end
