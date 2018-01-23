class AddMoreAddress < ActiveRecord::Migration[5.1]
  def up
  	Address.create(hometown: 'chandigarh',
  	               state: 'Haryana', 
  	               country: 'India',
  	               pincode: '411078',
  	               user_id: 19)
  end
end
