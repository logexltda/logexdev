class CreateBookEntries < ActiveRecord::Migration
  def change
    create_table :book_entries do |t|
      t.string :bookentry_tipo_documento
      t.string :bookentry_numero_documento
      t.string :string
      t.datetime :bookentry_fecha_ingreso
      t.string :editorial_nombre

      t.timestamps null: false
    end
  end
end
