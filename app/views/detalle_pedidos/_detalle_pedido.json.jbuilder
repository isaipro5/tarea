json.extract! detalle_pedido, :id, :id_detalle, :id_pedido, :id_producto, :created_at, :updated_at
json.url detalle_pedido_url(detalle_pedido, format: :json)
