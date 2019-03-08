class ImprovePreferences < ActiveRecord::Migration[5.2]
  def up
  	remove_column :preferences, :inedible
  	change_column :preferences, :rating, :string
  	rename_table :preferences, :topping_preferences
  end

  def down
  	rename_table :topping_preferences, :preferences  		
  	add_column :preferences, :inedible, :boolean
  	change_column :preferences, :rating, :int
  end
end
