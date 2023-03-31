class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.boolean :is_live

      t.timestamps
    end
  end
end
