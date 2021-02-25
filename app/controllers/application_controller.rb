class ApplicationController < ActionController::Base
  helper_method :this_user
  helper_method :signed_in?

  def this_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    session[:user_id]
  end
end
