# coding: utf-8
class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @user = User.new
  end

  def user_bar
  
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    @user.email='o@ru'
    @user.add_role 'admin'
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

end
