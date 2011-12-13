module ApplicationHelper
  
  def active_page?(slug)
    if params[:slug].nil? and slug == 'index'
      return true
    end
    
    slug == params[:slug]
  end
  
  def site_title
    base_title = Rails.application.config.site_title
    
    if(@title.nil?)
      return base_title
    end
    
    "#{base_title} | #{@title}"
  end
  
end
