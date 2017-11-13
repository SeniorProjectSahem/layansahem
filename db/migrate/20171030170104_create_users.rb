class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.references :location, index: true, foreign_key: true
      t.references :usertype, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
