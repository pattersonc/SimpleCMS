module ApplicationHelper
  
  def active_page?(slug)
    if params[:slug].nil? and params[:id].nil? and slug == 'index'
      return true
    end
    
    slug == params[:slug]
  end
  
  def active_message_page?(id)
    id == params[:id]    
  end
  
  def active_page1?(type, id)
    result = if type == :page
        params[:slug].nil? and id == :index or params[:slug] == id
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
