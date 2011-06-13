# coding: utf-8
class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  before_filter :login_required, :only => [:index, :show]
  before_filter :admin_required, :only=>:index
  before_filter :secondmenu
  

  # render new.rhtml
  def new
    @ai='#item4'
    @user = User.new
  end

  def index
    @us = User.all.sort do |a,b|
      if a.F&&a.I&&b.F&&b.I
        (a.F.mb_chars+a.I.mb_chars) <=> (b.F.mb_chars+b.I.mb_chars)
      else
        a.login <=>b.login
      end
    end
  @ai='#item4'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @us }
    end
  end

  def show
    @ai='#item4'
     @us = User.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @us }
    end
  end

  def user_bar
  
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    @user.email='o@ru'
     @user.add_role 'user'
     if @user.id==1
    @user.add_role 'admin'
     end
    
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/', :notice => "Спасибо за регистрацию! ")
    else
      flash.now[:error]  = "Ошибка при регистрации."
      render :action => 'new'
    end
  end

  def destroy
    begin
    @us=User.find(params[:id])

	@us.destroy
 rescue ActiveRecord::RecordNotFound
    end
	respond_to do |format|
        format.html { redirect_to(users_url) }
        format.xml  { head :ok }
  end
  end

  def newadmin
    @ai='#item4'
    @us=User.find(params[:id])
    @us.add_role 'admin'
       success = @us && @us.save
    if success && @us.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      redirect_to(users_url)
    else
      flash.now[:error]  = "Ошибка при добавлении роли."
      render :action => 'index'
    end
  end

    def deladmin
      @ai='#item4'
    @us=User.find(params[:id])
    @us.remove_role 'admin'
       success = @us && @us.save
    if success && @us.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      redirect_to(users_url)
    else
      flash.now[:error]  = "Ошибка при удалении роли."
      render :action => 'index'
    end
  end

    def listsessions
      @ai='#item5'
      @secondmenu=true
      @us=User.find(params[:id])
=begin
      ts=Testsession.all
      @sessions=Array.new
      ts.each do |t|
        if t.user_id==@us.id
          @sessions.push(t)
        end
      end
=end
      @sessions=@us.testsessions
      @confs=Hash[Tconfiguration.all.map{|u| [u.id,u.Name]}]
        #pagination
  @parametrs=params
  if params[:pagenum]
    @pagenum=params[:pagenum].to_i
  else
    @pagenum=1
  end
  @perpage=15
  @pagecount=@sessions.length/@perpage
  @pagecount+=1 if @sessions.length%@perpage!=0
  @firstline=(@pagenum-1)*@perpage
  @sessions=@sessions.drop(@firstline).take(@perpage)

      respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @us }
    end
    end

    def edit
      @us = User.find(params[:id])
    end
    def update
        @us = User.find(params[:id])

    respond_to do |format|
      if @us.update_attributes(params[:user])
        format.html { redirect_to(@us, :notice => 'Изменения сохранены') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @us.errors, :status => :unprocessable_entity }
      end
    end
    end
     def change_password
      return unless request.post?
      if User.authenticate(current_user.login, params[:old_password])
        if ((params[:password] == params[:password_confirmation]) &&
                              !params[:password_confirmation].blank?)
          current_user.password_confirmation = params[:password_confirmation]
          current_user.password = params[:password]

          if current_user.save
            flash[:notice] = "Password successfully updated"
            redirect_to profile_url(current_user.login)
          else
            flash[:alert] = "Password not changed"
          end

        else
          flash[:alert] = "New Password mismatch"
          @old_password = params[:old_password]
        end
      else
        flash[:alert] = "Old password incorrect"
      end
    end
   def admin
     @edu=Education.all.map {|i| [i.name,i.id]}
     @sert=Sertype.all.map {|i| [i.name,i.id]}
     @serl=Serlevel.all.map {|i| [i.name,i.id]}
     @sph=Sphere.all.map {|i| [i.name,i.id]}
     
   end
   def service
     f=params[:form].to_i
     id=params[:sid]
     case f
     when 1
      
       d=Sertype.find_by_name(params[:val])
       if !id and params[:mode]=='add'
         Sertype.create(:name=>params[:val]) if !d
       else
         if params[:mode]=='add'
            elem=Sertype.find(id)
        elem.update_attribute(:name,params[:val]) if elem
         else
            elem=Sertype.find(id)
           elem.destroy if elem
         end
       end
     when 2
        d=Serlevel.find_by_name(params[:val])
          
       if !id and params[:mode]=='add'
       Serlevel.create(:name=>params[:val])
        else
         if params[:mode]=='add'
           elem=Serlevel.find(id)
        elem.update_attribute(:name,params[:val]) if elem
         else
           elem=Serlevel.find(id)
           elem.destroy if elem
         end
       end
     when 3
        d= Education.find_by_name(params[:val])
      
       if !id and params[:mode]=='add'
       Education.create(:name=>params[:val])
        else
         if params[:mode]=='add'
            elem= Education.find(id)
        elem.update_attribute(:name,params[:val]) if elem
         else
            elem= Education.find(id)
           elem.destroy if elem
         end
       end
     when 4
       d= Sphere.find_by_name(params[:val])
       
       if !id and params[:mode]=='add'
       Sphere.create(:name=>params[:val])
        else
         if params[:mode]=='add'
           elem= Sphere.find(id)
        elem.update_attribute(:name,params[:val]) if elem
         else
           elem= Sphere.find(id)
           elem.destroy if elem
         end
       end
     end
     redirect_back_or_default(:admin)
   end
private
 def secondmenu
   @secondmenu=true
   @ai='#item4'
 end
     
end
