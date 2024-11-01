json.extract! producto, :id, :id_producto, :nombre, :categoria, :precio, :created_at, :updated_at
json.url producto_url(producto, format: :json)
