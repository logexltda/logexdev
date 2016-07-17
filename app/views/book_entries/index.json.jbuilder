json.array!(@book_entries) do |book_entry|
  json.extract! book_entry, :id, :bookentry_tipo_documento, :bookentry_numero_documento, :string, :bookentry_fecha_ingreso, :editorial_nombre
  json.url book_entry_url(book_entry, format: :json)
end
