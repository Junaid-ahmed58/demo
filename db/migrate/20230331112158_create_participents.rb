class CreateParticipents < ActiveRecord::Migration[7.0]
  def change
    create_table :participents do |t|
      t.string :name

      t.timestamps
    end
  end
end
