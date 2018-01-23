class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.datetime :date_of_birth
      t.string :email
      t.string :password
      #t.integer :contact_no

      t.timestamps
    end
    #change_table :users do 
    #user1 = User.create(name: 'pinky', gender: 'female', date_of_birth: 20180122, email: 'pinkyrout10@gmail.com', password: 'pinky123')
    end
end

