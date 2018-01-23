class Address < ApplicationRecord
	belongs_to :user
	validates :hometown, presence: true
	validates :state, presence: true
	validates :country, presence: true
	validates :pincode, presence: true
end
