class SertypesController < ApplicationController
  def new
    @ai='#item4'
    @st=Sertype.new
       respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @st }
  end
  end

   def create
	@st = Sertype.new(params[:sertype])

    respond_to do |format|
      if @st.save
        format.html {  redirect_back_or_default(new_user_path) }
        format.xml  { render :xml => @st, :status => :created, :location => @st }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @st.errors, :status => :unprocessable_entity }
      end
    end
  end

end
