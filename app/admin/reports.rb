ActiveAdmin.register Report do
  permit_params :title, :content, :user_id

  # Index Page: List all reports
  index do
    selectable_column
    id_column
    column :title
    column :user
    column :content
    column :created_at
    actions do |report|
      link_to "Download", download_admin_report_path(report), class: "button"
    end
  end

  # Form for Creating & Editing Reports
  form do |f|
    f.inputs "Report Details" do
      f.input :title
      f.input :content
      f.input :user
    end
    f.actions
  end

  member_action :download, method: :get do
    report = Report.find(params[:id])
    
    send_data report.content,
              filename: "#{report.title.parameterize}.txt",
              type: "text/plain"
  end
end
