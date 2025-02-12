ActiveAdmin.register Contact do
    permit_params :first_name, :last_name, :email, :phone, :account_id
  
    index do
      selectable_column
      id_column
      column :first_name
      column :last_name
      column :email
      column :phone
      column :account
      actions
    end
  
    form do |f|
      f.inputs "Contact Details" do
        f.input :first_name
        f.input :last_name
        f.input :email
        f.input :phone
        f.input :account
      end
      f.actions
    end
end
  