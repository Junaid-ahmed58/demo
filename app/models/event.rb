class Event < ApplicationRecord
    has_many :feedback, as: :commentable
    has_many :event_participents
    has_many :participents, through: :event_participents
end
