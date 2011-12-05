class Page < ActiveRecord::Base
  scope :active, where(:active => true) 
  
  validates :name, 
    :presence => true, 
    :length => { :maximum => 255 }

  validates :title, 
    :presence => true, 
    :length => { :maximum => 255 }

  validates :slug,
    :uniqueness => true,
    :presence => true, 
    :length => { :minimum => 5, :maximum => 255 }

  validates :content, 
    :presence => true

  def self.content_page(slug)
    slug = slug ||= 'index'
    Page.active.where(:slug => slug).order("updated_at desc").first
  end
    
end