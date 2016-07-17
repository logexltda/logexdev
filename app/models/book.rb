class Book < ActiveRecord::Base
	belongs_to :editorial
	belongs_to :book_entry_detail
	validates :book_isbn, presence: true, length: {in: 8..15, message: 'Debe ingresar isbn válido'}
	validates :book_titulo, presence: true
	validates :book_cantidad_ejemplares, presence: true, numericality: { only_integer: true }
	validates :editorial_id, presence: true
	validates :book_autor, presence: true
end
