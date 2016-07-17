class CreateBookEntryDetails < ActiveRecord::Migration
  def change
    create_table :book_entry_details do |t|
      t.string :bookentrydetail_titulo
      t.integer :bookentrydetail_cantidad_ejemplares
      t.integer :bookentry_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
