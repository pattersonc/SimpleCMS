ActiveAdmin.register Post do
  index do
    column :title
    column :slug, :sortable => :slug do |page|
      link_to "/#{page.slug}", content_path(:slug => page.slug)
    end
    column :active
    column :created_at
    column :updated_at

    default_actions :except => [:view]
  end  
end
