class Employee < ActiveRecord::Migration[7.0]
  def change
    create_table :employee do |t|
      t.string :first_name 
      t.string :last_name 
      t.string :email
      t.decimal :salary, default: 0.0
      t.boolean :is_active, default: false
    
      t.timestamps
    end
    
  end
end
