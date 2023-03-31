class News < ApplicationRecord
    has_many :feedback, as: :commentable
end
