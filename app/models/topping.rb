class Topping < ApplicationRecord
	has_many :preferences, dependent: :destroy
end
