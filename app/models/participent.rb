class Participent < ApplicationRecord
    has_many :event_participents
    has_many :events, through: :event_participents
end
