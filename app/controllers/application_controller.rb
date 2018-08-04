class ApplicationController < ActionController::Base
  helper_method :current_user
  private 
  def current_user
    if session.has_key? :user_id
      @user = User.find(session[:user_id])
      return @user
    else
      return nil
    end
  end
end
