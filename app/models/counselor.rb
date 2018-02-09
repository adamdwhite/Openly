class Counselor < ApplicationRecord

  belongs_to :user
  has_one :chat

  validates :agreement, acceptance: true

  enum gender: [:undisclosed, :female, :male, :other]

end
