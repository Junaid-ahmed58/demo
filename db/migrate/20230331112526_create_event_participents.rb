class CreateEventParticipents < ActiveRecord::Migration[7.0]
  def change
    create_table :event_participents do |t|
      t.references :event, null: false, foreign_key: true
      t.references :participent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
