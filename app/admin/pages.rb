ActiveAdmin.register Page do
  index do
    column :name
    column :slug
    column :active
    column :created_at
    column :updated_at

    default_actions
  end

  form do |f|
    f.inputs "Page Details" do
      f.input :name
      f.input :title
      f.input :slug
      f.input :active
      f.input :content, :input_html => { :class => 'ckeditor' }
    end
    f.buttons
  end

end
