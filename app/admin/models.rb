ActiveAdmin.register Model do
  permit_params :name, :description

  # Index Page: List all models
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :created_at
    actions
  end

  # Form for Creating & Editing Models
  form do |f|
    f.inputs "Model Details" do
      f.input :name
      f.input :description
    end
    f.actions
  end
end
