json.array!(@book_entry_details) do |book_entry_detail|
  json.extract! book_entry_detail, :id, :bookentrydetail_titulo, :bookentrydetail_cantidad_ejemplares, :bookentry_id, :book_id
  json.url book_entry_detail_url(book_entry_detail, format: :json)
end
