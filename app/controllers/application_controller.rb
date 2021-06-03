class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :validate_logged_user!

  def validate_logged_user!
    if !current_user
      redirect '/login'
    end
  end

  def current_user
    user_id = session[:user_id]
    if user_id
      User.find(user_id)
    end
  end
end
