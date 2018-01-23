class AddInitialAdresses < ActiveRecord::Migration[5.1]
	def up
      Address.create(hometown: 'kushinagar', 
      	             state: 'UP', 
      	             country: 'India', 
      	             pincode: '411015', 
      	             user_id: 19)
    end
    #def down
    #	Address.delete_all
    #end
end
