class ApplicationController < ActionController::Base
  helper_method :this_user
  helper_method :signed_in?

  def this_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    session[:user_id]
  end

  def authenticate
    return if signed_in?

    session[:redirect_me] = request.env['PATH_INFO']
    flash.alert = 'You are not authorized to perform this action.'
    redirect_to login_path
  end
end
