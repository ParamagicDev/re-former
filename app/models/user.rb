# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 256 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8, maximum: 50 }
  validates :password_confirmation, presence: true, length: { minimum: 8, maximum: 50 }

  # will check for presence
  has_secure_password
end
