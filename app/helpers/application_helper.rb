module ApplicationHelper
  
  def active_page?(type, id)
    result = if type == :page
        (params[:id].nil? and params[:slug].nil? and id == 'index') or 
          params[:slug] == id
      elsif type == :message
        params[:id] === id
      else
        false
      end
  end
  
  
  def site_title
    base_title = Rails.application.config.site_title
    
    if(@title.nil?)
      return base_title
    end
    
    "#{base_title} | #{@title}"
  end
  
end
