class Activity < ApplicationRecord
  belongs_to :user

  # default_scope -> { order(date: :desc) }
  validates :user_id, presence: true
end
