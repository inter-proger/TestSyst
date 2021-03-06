# coding: utf-8
# This controller handles the login/logout function of the site.  

class SessionsController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  # render new.rhtml
  def new
    @ai='#item1'
  end

  def create
    logout_keeping_session!
    user = User.authenticate(params[:login], params[:password])
    if user
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
      redirect_back_or_default('/', :notice => "Вы успешно вошли.")
    else
      note_failed_signin
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    redirect_back_or_default('/', :notice => "Вы вышли.")
  end

protected
  # Track failed login attempts
  def note_failed_signin
    flash.now[:error] = "Ошибка входа для '#{params[:login]}'"
    logger.warn "Ошибка входа под именем '#{params[:login]}' от #{request.remote_ip} в #{Time.now.utc}"
  end
end
