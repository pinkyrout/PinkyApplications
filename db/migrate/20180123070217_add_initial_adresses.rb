class AddInitialAdresses < ActiveRecord::Migration[5.1]
	Address.create(hometown: 'kushinagar', state: 'UP', country: 'India', pincode: '411015', user_id: 18)
end