class Article < ApplicationRecord
  validates :title, presence: true
  after_destroy :log_destroy_action
  def log_destroy_action
    puts "Article destroyed"
  end
  has_and_belongs_to_many :author, join_table: "article", foreign_key: "author_id"
  
end
