class Page < ActiveRecord::Base
  
  def self.active_content_page(slug)
    id = slug ||= 'index'
    Page.order("updated_at desc").where(:active => true, :slug => id)
  end
    
end
