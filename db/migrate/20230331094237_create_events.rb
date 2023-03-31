class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.date :scheduled_at

      t.timestamps
    end
  end
end
