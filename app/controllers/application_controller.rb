class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :page_links
  helper_method :widgets
  
  def page_links
    Page.where(:active => true).order(:display_order)
  end
  
  def widgets
    Widget.active.order(:updated_at)
  end
  
      
end
