class AddContactNoToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :contact_no, :integer
  end
end
