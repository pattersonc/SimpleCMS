# == Schema Information
#
# Table name: pages
#
#  id            :integer         not null, primary key
#  slug          :string(255)
#  content       :text(255)
#  created_at    :datetime
#  updated_at    :datetime
#  title         :string(255)
#  active        :boolean         default(TRUE)
#  display_order :integer         default(0)
#

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
