class PagesController < ApplicationController
  
  # GET /:id
  def content
    @page = Page.content_page(params[:id])
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
  end
  
end