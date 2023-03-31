class AddPolymorphicAttrsToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :commentable_type, :string
    add_column :feedbacks, :commentable_id, :integer
    remove_column :feedbacks, :article_id, :integer
    remove_column :feedbacks, :event_id, :integer
    remove_column :feedbacks, :news_id, :integer
  end
end
