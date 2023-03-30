class RemoveDescriptiontoDoctor < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctor, :description
  end
end
