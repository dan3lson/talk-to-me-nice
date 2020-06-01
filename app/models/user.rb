# frozen_string_literal: true

# User stores data for each chat participant.
class User < ApplicationRecord
  has_secure_password

  has_many :messages, dependent: :destroy

  NAME_REGEX = /\w+/.freeze

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: /\A#{NAME_REGEX}\z/i },
            length: { maximum: 15 }
  validates :password, presence: true, length: { minimum: 6 }
end
