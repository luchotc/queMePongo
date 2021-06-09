class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    user_id = session[:user_id]
    if user_id
      User.find(user_id)
    end
  end
end
