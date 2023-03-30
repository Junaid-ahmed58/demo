class Doctor < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor do |t|
      t.string :name
      t.string :email
      t.float :fee, default: 0.0
    end
  end
end