class AddDescriptionToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_column :doctor, :description, :text
  end
end
