class CreateSubArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_articles do |t|
      t.string :title
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
