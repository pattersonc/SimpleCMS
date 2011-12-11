class Widget < ActiveRecord::Base
  scope :active, where(:active => true)

  validates :title,
    :presence => true,
    :length => { :maximum => 255 }

  validates :slug,
    :uniqueness => true,
    :presence => true,
    :length => { :maximum => 255 }

  validates :content,
    :presence => true
end
