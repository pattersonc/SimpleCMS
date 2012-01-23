ActiveAdmin.register Message do
  index do
    column :from_email
    column :from_name
    column :ip
    column :status
    column :message
    column :created_at
    column :updated_at

    default_actions
  end  
end
