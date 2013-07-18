#   Application Controller for QB_FORUM applicaiton

class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user_session, :current_user

  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def require_user
    unless current_user
      store_return_uri
      flash[:message] = "You must login to access this page"
      redirect_to login_url
    return false
    end
  end

  def redirect_back_or_default (default)
    redirect_to(session[:redirect_uri] || default)
    session[:redirect_uri] = nil
  end

  def store_return_uri
    session[:redirect_uri] = request.url
  end

end
