class AuthorProject < ApplicationRecord
  belongs_to :author
  belongs_to :project
end
