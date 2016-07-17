class Editorial < ActiveRecord::Base
	has_many :books
	validates :editorial_rut, presence: true, length: {in: 8..9, message: 'Debe ingresar rut válido'}
	validates :editorial_razon_social, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :editorial_email_contacto, format: { :with => VALID_EMAIL_REGEX , message:": El formato del correo es invalido" }
end
