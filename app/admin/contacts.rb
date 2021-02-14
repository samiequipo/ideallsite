ActiveAdmin.register Contact do
  index do
    selectable_column
    column :total_name
    column :phone
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :phone
  filter :total_name
  
  permit_params :total_name, :phone, :email

  
end
