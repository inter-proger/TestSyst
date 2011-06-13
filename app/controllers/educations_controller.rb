# coding: utf-8
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

   def update
     @education=Education.find(params[:id])
     respond_to do |format|
      if @education.update_attributes(params[:education])
        format.html { redirect_to(:root, :notice => 'Изменения успешно сохранены.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
     end
   end
   def edit
     @education=Education.find(params[:id])
   end

   def destroy
     @education=Education.find(params[:id])
    @education.destroy
     respond_to do |format|
      format.html { redirect_to(:root) }
        format.xml  { head :ok }
     end
   end
end
