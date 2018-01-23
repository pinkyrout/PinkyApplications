class ChangeContactToString < ActiveRecord::Migration[5.1]
  def up
    change_table :users do |t|
  	t.change :contact_no, :string
  end
end
#this is the other way 
# def up
#change_column :users, :contact_no, :string
#end
end
