class Event < ApplicationRecord
    has_many :feedback, as: :commentable
end
