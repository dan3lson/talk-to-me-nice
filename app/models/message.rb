# frozen_string_literal: true

# Message stores communication data sent by a user.
class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true

  scope :recent, -> { order(:created_at).last(50) }
end
