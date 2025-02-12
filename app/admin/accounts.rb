ActiveAdmin.register Account do
  permit_params :name, :industry, :website

  # Index Page: List all accounts
  index do
    selectable_column
    id_column
    column :name
    column :industry
    column :website
    actions
  end

  # Form for Creating & Editing Accounts
  form do |f|
    f.inputs "Account Details" do
      f.input :name
      f.input :industry
      f.input :website
    end
    f.actions
  end
end
