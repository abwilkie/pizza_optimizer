class Topping < ApplicationRecord
	has_many :topping_preferences, dependent: :destroy
end
