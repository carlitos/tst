class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :photo
      t.text :description
      t.integer :price
      t.integer :categorie
      t.references :user_id

      t.timestamps
    end
    add_index :books, :user_id_id
  end
end
