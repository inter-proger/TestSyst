class EducationsController < ApplicationController
   def new
    @edu=Education.new
       respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @edu }
  end
  end

   def create
	@edu = Education.new(params[:education])

    respond_to do |format|
      if @edu.save
        format.html { redirect_back_or_default(new_user_path) }
        format.xml  { render :xml => @st, :status => :created, :location => @edu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @edu.errors, :status => :unprocessable_entity }
      end
    end
  end

end
