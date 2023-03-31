class EventParticipent < ApplicationRecord
  belongs_to :event
  belongs_to :participent
end
