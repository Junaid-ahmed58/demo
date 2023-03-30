class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
    
    end
  end
end
