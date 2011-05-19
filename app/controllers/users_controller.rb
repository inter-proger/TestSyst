# coding: utf-8
class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  before_filter :login_required, :only => [:index, :show]
  before_filter :admin_required, :only=>:index
  

  # render new.rhtml
  def new
    @user = User.new
  end

  def index
  @us = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @us }
    end
  end

  def show
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
    @us=User.find(params[:id])
	@us.destroy
	respond_to do |format|
        format.html { redirect_to(users_url) }
        format.xml  { head :ok }
  end
  end

  def newadmin
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

end
