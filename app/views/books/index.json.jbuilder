json.array!(@books) do |book|
  json.extract! book, :id, :book_isbn, :book_titulo, :book_cantidad_ejemplares, :book_autor, :book_serie, :book_coleccion, :book_paginas, :book_ano, :book_encuadernacion, :editorial_id
  json.url book_url(book, format: :json)
end
