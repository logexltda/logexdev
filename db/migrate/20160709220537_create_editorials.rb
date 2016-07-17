class CreateEditorials < ActiveRecord::Migration
  def change
    create_table :editorials do |t|
      t.string :editorial_rut
      t.string :editorial_razon_social
      t.string :editorial_direccion
      t.string :editorial_email_contacto
      t.string :editorial_nombre_contacto
      t.text :editorial_descripcion

      t.timestamps null: false
    end
  end
end
