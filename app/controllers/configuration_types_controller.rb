class ConfigurationTypesController < ApplicationController
   before_filter :login_required
  # GET /configuration_types
  # GET /configuration_types.xml
  def index
    @configuration_types = ConfigurationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @configuration_types }
    end
  end

  # GET /configuration_types/1
  # GET /configuration_types/1.xml
  def show
    @configuration_type = ConfigurationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @configuration_type }
    end
  end

  # GET /configuration_types/new
  # GET /configuration_types/new.xml
  def new
    @configuration_type = ConfigurationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @configuration_type }
    end
  end

  # GET /configuration_types/1/edit
  def edit
    @configuration_type = ConfigurationType.find(params[:id])
  end

  # POST /configuration_types
  # POST /configuration_types.xml
  def create
    @configuration_type = ConfigurationType.new(params[:configuration_type])

    respond_to do |format|
      if @configuration_type.save
        format.html { redirect_to(@configuration_type, :notice => 'Configuration type was successfully created.') }
        format.xml  { render :xml => @configuration_type, :status => :created, :location => @configuration_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @configuration_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /configuration_types/1
  # PUT /configuration_types/1.xml
  def update
    @configuration_type = ConfigurationType.find(params[:id])

    respond_to do |format|
      if @configuration_type.update_attributes(params[:configuration_type])
        format.html { redirect_to(@configuration_type, :notice => 'Configuration type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @configuration_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /configuration_types/1
  # DELETE /configuration_types/1.xml
  def destroy
    begin
    @configuration_type = ConfigurationType.find(params[:id])
    
    @configuration_type.destroy
     rescue ActiveRecord::RecordNotFound
    end

    respond_to do |format|
      format.html { redirect_to(configuration_types_url) }
      format.xml  { head :ok }
    end
  end
end
