class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.monetize :item_price_cents
      t.monetize :total_price_cents

      t.timestamps null: false
    end
  end
end
