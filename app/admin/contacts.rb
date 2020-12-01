ActiveAdmin.register Contact do
  index do
    selectable_column
    column :first_name
    column :last_name
    column :phone
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :phone
  filter :first_name
  
  permit_params :first_name, :last_name, :phone, :email

  
end
