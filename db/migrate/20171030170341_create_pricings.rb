class CreatePricings < ActiveRecord::Migration
  def change
    create_table :pricings do |t|
      t.integer :daily_price
      t.integer :monthly_price
      t.integer :yearly_price
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
