json.extract! contact, :id, :name, :email, :phone, :account_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
