class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.integer :topping_id
      t.boolean :inedible
      t.integer :rating

      t.timestamps
    end
  end
end
