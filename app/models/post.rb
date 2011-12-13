class Post < ActiveRecord::Base
  scope :active, where(:active => true).order("updated_at desc")

  validates :title,
    :presence => true,
    :length => { :maximum => 255 }

  validates :slug,
    :uniqueness => true,
    :presence => true,
    :length => { :maximum => 255 }

  validates :content,
    :presence => true
    
  def self.get_all
    Post.active
  end
  
  def self.get
    Post.active.where(:slug => params[:id] )
  end

end
