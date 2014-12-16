json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :email, :pass
  json.url usuario_url(usuario, format: :json)
end
