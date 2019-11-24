class ApplicationController < ActionController::Base
  helper_method :current_user 
  #looks up user with the current session token 

  private 

  def current_user
    return nil if !session[:session_token]
    User.find_by(session_token: session[:session_token])
  end

end
