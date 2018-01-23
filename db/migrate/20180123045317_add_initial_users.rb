class AddInitialUsers < ActiveRecord::Migration[5.1]
  def up
  	User.create!(name: 'Priya', gender: 'female', date_of_birth: '20180123', email: 'priya10@gmail.com', password: 'priya@123', contact_no: '98764')
    User.create!(name: 'Ravi0', gender: 'male', date_of_birth: '20180124', email: 'ravi10@gmail.com', password: 'ravi@123', contact_no: '987645')
  end
  def down
  	User.delete_all
  end
end
