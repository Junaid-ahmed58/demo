class Article < ApplicationRecord
  validates :title, presence: true
  after_destroy :log_destroy_action
  def log_destroy_action
    puts "Article destroyed"
  end
  has_many :feedback, as: :commentable
  has_one :sub_article
  has_and_belongs_to_many :author
  
  
end
