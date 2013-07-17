class UserSessionsController < ApplicationController
  before_filter :require_user, :only => :destroy
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:message] = "Login Successful"
      redirect_back_or_default users_url
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:message] = "Logout Successfully"
    redirect_back_or_default new_user_session_url
  end

end
