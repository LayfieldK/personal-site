class StaticPagesController < ApplicationController
  before_filter :authenticate, only: [:admin]
  
  def home
    @blogposts = Blogpost.all.paginate(page: params[:page])
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
        username == USER_ID && password == PASSWORD
      end
    end
    
  
end
