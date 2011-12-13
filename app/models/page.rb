class Page < ActiveRecord::Base
  scope :active, where(:active => true)

  validates :title,
    :presence => true,
    :length => { :maximum => 255 }

  validates :slug,
    :uniqueness => true,
    :presence => true,
    :length => { :maximum => 255 }

  validates :display_order,
    :presence => true

  validates :content,
    :presence => true

  def self.content_page(slug)
    slug = slug ||= 'index'
    Page.active.where(:slug => slug).order("updated_at desc").first
  end

end
