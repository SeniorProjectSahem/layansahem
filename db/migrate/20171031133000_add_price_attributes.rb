class AddPriceAttributes < ActiveRecord::Migration
  def change
    add_column :items, :daily_price, :integer
    add_column :items, :weekly_price, :integer
    add_column :items, :monthly_price, :integer
  end
end
