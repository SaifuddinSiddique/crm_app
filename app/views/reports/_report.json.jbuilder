json.extract! report, :id, :name, :data, :created_at, :updated_at
json.url report_url(report, format: :json)
