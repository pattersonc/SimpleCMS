class PagesController < ApplicationController

  # GET /
  def content
    @page = Page.content_page(params[:slug])
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
  end

end
