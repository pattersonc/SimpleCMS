class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :page_links
  
  def page_links
    Page.all
  end
      
end
