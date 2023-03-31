class Project < ApplicationRecord
    has_many :author_projects
    has_many :authors, through: :author_projects
end
