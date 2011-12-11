ActiveAdmin.register Page do
  index do
    column :name
    column :slug, :sortable => :slug do |page|
      link_to "/#{page.slug}", content_path(:slug => page.slug)
    end
    column :active
    column :display_order
    column :created_at
    column :updated_at

     default_actions :except => [:view]
  end

  form do |f|
    f.inputs "Page Details" do
      f.input :name
      f.input :title
      f.input :slug
      f.input :display_order
      f.input :active
      f.input :content, :input_html => { :class => 'ckeditor' }
    end
    f.buttons
  end

end
