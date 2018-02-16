class Counselor < ApplicationRecord

  has_one :user
  has_one :user_id, through: :user
  has_one :chat

  validates :agreement, acceptance: true

  enum gender: [:undisclosed, :female, :male, :other]

end
