class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :page_links
  helper_method :posts
  
  def page_links
    Page.where(:active => true).order(:display_order)
  end
  
  def posts
    Post.active.order(:updated_at)
  end
  
      
end
