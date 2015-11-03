class StaticPagesController < ApplicationController
  before_filter :authenticate, only: [:admin]
  
  def home
    @blogposts = Blogpost.first
  end
  
  def admin

  end
  
  def about
    
  end
  
  def projects
    
  end
  
  def roman_emperors_d3
    render :layout => false
  end
  
  def yankees_98
    render :layout => false
  end
  
  def star_wars_crawl
    render :layout => false
  end
  
  def star_wars_crawl1
    render :layout => false
  end
  
  protected
  
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == Rails.application.secrets.USER_ID && password == Rails.application.secrets.PASSWORD
      end
    end
    
  
end
