class StaticPagesController < ApplicationController
  before_filter :authenticate, only: [:admin]
  
  def home
    @blogposts = Blogpost.all.paginate(page: params[:page], :per_page => 5)
  end
  
  def admin

  end
  
  def about
    
  end
  
  def projects
    
  end
  
  
  
  protected
  
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == Rails.application.secrets.USER_ID && password == Rails.application.secrets.PASSWORD
      end
    end
    
  
end
