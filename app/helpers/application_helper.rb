module ApplicationHelper
  
  def active_page?(slug)
    if params[:slug].nil? and slug == 'index'
      return true
    end
    
    slug == params[:slug]
  end
  
end
