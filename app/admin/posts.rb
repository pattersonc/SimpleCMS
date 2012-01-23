ActiveAdmin.register Post do
  index do
    column :title
    column :slug, :sortable => :slug do |post|
      link_to "/#{post.slug}", post_path(:id => post.slug)
    end
    column :active
    column :created_at
    column :updated_at

    default_actions :except => [:view]
  end  
end
