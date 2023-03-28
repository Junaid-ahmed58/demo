class AddSalaryToPersons < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :salary, :integer
  end
end
