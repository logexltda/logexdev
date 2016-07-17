class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_isbn
      t.string :book_titulo
      t.integer :book_cantidad_ejemplares
      t.string :book_autor
      t.string :book_serie
      t.string :book_coleccion
      t.integer :book_paginas
      t.integer :book_ano
      t.string :book_encuadernacion
      t.integer :editorial_id

      t.timestamps null: false
    end
  end
end
