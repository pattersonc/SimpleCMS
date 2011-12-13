class PagesController < ApplicationController

  # GET /:slug
  #
  def content
    @page = Page.content_page(params[:slug])
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
    @title = @page.title
  end

end
