class CreateUsers < ActiveRecord::Migration[7.0]
  
  def up
    create_table :users do |i|
      i.column :fist_name, :string, limit: 25
      i.string :last_name, limit: 50 
      i.string :email, default: '', null: false 
      i.string :password, limit: 40
      i.string :Nomb_animal, limit: 40
      
      i.timestamps 
      #i.datetime "created_at"
      #i.datetime "update_at"
    end
  end

  def down
   drop_table :users  
  end
end


