class Activity < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :activity, presence: true
  validates :minutes, presence: true
  # default_scope -> { order(date: :desc) }
  validates :user_id, presence: true
end
