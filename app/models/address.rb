# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  hometown   :string
#  state      :string
#  country    :string
#  pincode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Address < ApplicationRecord
	belongs_to :user
	validates :hometown, presence: true
	validates :state, presence: true
	validates :country, presence: true
	validates :pincode, presence: true, length: { is: 6 }
end
