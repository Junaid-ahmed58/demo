class Author < ApplicationRecord
    has_many :blog
    has_and_belongs_to_many :articles, join_table: "author", foreign_key: "articles_id"
end
