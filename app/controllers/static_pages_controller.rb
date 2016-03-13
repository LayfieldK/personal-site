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
  
  def conaircentration
    render :layout => false
  end
  
  def star_wars_crawl
    render :layout => false
  end
  
  def star_wars_crawl1
    render :layout => false
  end
  
  def eve_kills
    render :layout=> false
  end
  
  def hearthstone
    
  end
  
  protected
  
    
    
  
end
