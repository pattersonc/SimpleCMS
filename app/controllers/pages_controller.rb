class PagesController < ApplicationController
  
  # GET /pages
  # GET /pages.json
  def content
        
    @page = Page.active_content_page(params[:id])
    
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
    
  end
  
  def list
  
  end
  
  def new
    
  end
  
  def edit
  
  end
  
end
