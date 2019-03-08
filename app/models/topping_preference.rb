class ToppingPreference < ApplicationRecord
	belongs_to :user
	belongs_to :topping
	validates :topping, uniqueness: { scope: :user }
end
