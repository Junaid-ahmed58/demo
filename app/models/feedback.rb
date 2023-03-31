class Feedback < ApplicationRecord
  belongs_to :commentable, polymorphic: true
end
