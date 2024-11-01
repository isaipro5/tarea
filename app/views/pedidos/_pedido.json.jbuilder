json.extract! pedido, :id, :id_pedido, :dni, :fecha_pedido, :total, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
