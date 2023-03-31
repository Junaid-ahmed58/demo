class Author < ApplicationRecord
    has_many :blog
    has_and_belongs_to_many :articles, join_table: 'articles_authors'
    #has_many :author_projects
    #has_many :projects, through: :author_projects
end
