json.extract! usuario_intranet, :id, :id_usuario, :nombre, :email, :created_at, :updated_at
json.url usuario_intranet_url(usuario_intranet, format: :json)
