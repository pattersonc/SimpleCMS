ActiveAdmin.register Page do
  index do
    column :name
    column :slug
    column :created_at
    column :updated_at
    
    default_actions
  end
  
end
