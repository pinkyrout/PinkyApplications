# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  gender        :string
#  date_of_birth :datetime
#  email         :string
#  password      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  contact_no    :string
#

class User < ApplicationRecord
	 
	#validates_confirmation_of :password
  #attr_accessible :password, :password_confirmation
  #attr_accessor :password
	has_one :address
	validates :name, presence: true,
	                 format: {with: /\A[A-Za-z][A-Za-z0-9]*_*[A-Za-z0-9]*/,
	                          message: "cannot start with a number or underscore"} 
	
	validates :gender, presence: true

	validates :date_of_birth, presence: true

	validates :email, presence: true, 
	                  format: { with: /\A[a-z]\w*[.]*\w*@[a-z]+.com\Z/, 
		              message: "sample123@gmail.com, you can use . and _ as well" }
	
	validates :password, presence: true,
	                     confirmation: true,
	                     length: { minimum: 6 },
	                     format: { with: /\A[a-zA-Z][a-zA-z0-9]*[~!@#$%&*()_+.><,?:;'"}{|][a-zA-Z0-9]*/, 
	                     message: "password should have mini length 6 and should contain alleast 1 special character"}
    
    validates :contact_no, presence: true, 
                           format: {with: /\d{10}/,
                           message: "contact no should be in digits and length 10"}
end



