class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.monetize :price_cents
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
