class PagesController < ApplicationController
  
  # GET /pages
  # GET /pages.json
  def content
    id = params[:id] ||= 'index'
    
    @page = Page.find_by_slug(id)
    
    render 'content'
  end
  
  def list
  
  end
  
  def new
    
  end
  
  def edit
  
  end
  
end
