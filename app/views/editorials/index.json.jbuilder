json.array!(@editorials) do |editorial|
  json.extract! editorial, :id, :editorial_rut, :editorial_razon_social, :editorial_direccion, :editorial_email_contacto, :editorial_nombre_contacto, :editorial_descripcion
  json.url editorial_url(editorial, format: :json)
end
