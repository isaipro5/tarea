json.extract! cliente, :id, :dni, :nombre, :edad, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
