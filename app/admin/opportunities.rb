ActiveAdmin.register Opportunity do
  permit_params :name, :amount, :close_date, :account_id, :contact_id, :stage

  # Index Page: List all opportunities
  index do
    selectable_column
    id_column
    column :name
    column :amount
    column :close_date
    column :account
    column :contact
    column :stage
    actions
  end

  # Form for Creating & Editing Opportunities
  form do |f|
    f.inputs "Opportunity Details" do
      f.input :name
      f.input :amount
      f.input :close_date, as: :datepicker
      f.input :account
      f.input :contact
      f.input :stage, as: :select, collection: [[ "New", 0 ], [ "In Progress", 1 ], [ "Closed Won", 2 ], [ "Closed Lost", 3 ]]
    end
    f.actions
  end
end
