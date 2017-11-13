class User < ApplicationRecord
  attr_accessor :email, :password, :password_confirmation
  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
