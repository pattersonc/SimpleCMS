# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  active     :boolean
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  scope :active, where(:active => true).order("updated_at desc")

  validates :title,
    :presence => true,
    :length => { :maximum => 255 }

  validates :slug,
    :uniqueness => true,
    :presence => true,
    :length => { :maximum => 255 },
    :format => { :with => /^[a-z0-9-]+$/ }

  validates :content,
    :presence => true
    
  def self.get_all
    Post.active
  end
  
  def self.get(slug)
    Post.active.where(:slug => slug).first
  end

end
