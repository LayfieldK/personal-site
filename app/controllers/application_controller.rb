class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :authenticate
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def logged_in?
   not request.authorization.nil?
  end
  
  def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == Rails.application.secrets.USER_ID && password == Rails.application.secrets.PASSWORD
      end
  end

end
